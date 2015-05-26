class Material < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Material.create! row.to_hash
    end
  end

  def setup_costing_duration
    (self.setup_costing_date - self.eis_start_date).to_i
  end

  def setup_purchasing_duration
    (self.setup_purchasing_date - self.setup_costing_date).to_i
  end

  def engineering_release_duration
    if self.engineering_release_date.blank?
      "NA - Normal series"
    else
      if self.setup_purchasing_date.blank?
        (self.engineering_release_date - self.setup_costing_date).to_i
      else
        (self.engineering_release_date - self.setup_purchasing_date).to_i
      end
    end

  end

  def finalized_purchasing_duration
    (self.finalized_purchasing_date - self.engineering_release_date).to_i
  end

  def setup_log_prod_duration
    @setup_log_prod_date = [self.clp_prl_date, self.clp_sdl_date, (self.work_scheduling || 0) ].sort.last 
    if self.finalized_purchasing_date.blank?
      if self.setup_purchasing_date.blank?
        (@setup_log_prod_date - self.setup_costing_date).to_i
      else
        (@setup_log_prod_date - self.setup_purchasing_date).to_i
      end
    else
      (@setup_log_prod_date - self.finalized_purchasing_date).to_i
    end
  end

  def plant_costing_duration
    (self.plant_costing_date - @setup_log_prod_date).to_i
  end

  def quality_management_duration
    (self.quality_management_date - self.plant_costing_date).to_i
  end

  def entire_process_duration
    (self.quality_management_date  - self.eis_start_date).to_i
  end

end
