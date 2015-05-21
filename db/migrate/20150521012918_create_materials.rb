class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :number
      t.string :description
      t.string :plant_status
      t.string :type
      t.string :procurement_type
      t.date :eis_start_date
      t.date :setup_costing_date
      t.date :setup_purchasing_date
      t.date :engineering_release_date
      t.date :finalized_purchasing_date
      t.date :clp_prl_date
      t.date :clp_sdl_date
      t.date :work_scheduling
      t.date :plant_costing_date
      t.date :quality_management_date

      t.timestamps null: false
    end
  end
end
