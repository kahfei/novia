class HomeController < ApplicationController
  def show

    # 2014 reports
    # semifinished + make + pre
    @semifinished_make_pre_materials = Material.where("engineering_release_date IS NOT Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "E").where("strftime('%Y', eis_start_date)     <= ?", "2014")
    @smp_length = @semifinished_make_pre_materials.to_a.length
    @smp_setup_costing_average = @semifinished_make_pre_materials.to_a.sum(&:setup_costing_duration).to_f / @smp_length
    @smp_engineering_release_average =  @semifinished_make_pre_materials.to_a.sum(&:engineering_release_duration).to_f / @smp_length
    @smp_log_prod_average = @semifinished_make_pre_materials.to_a.sum(&:setup_log_prod_duration).to_f / @smp_length
    @smp_plant_costing_average = @semifinished_make_pre_materials.to_a.sum(&:plant_costing_duration).to_f / @smp_length
    @smp_quality_management_average = @semifinished_make_pre_materials.to_a.sum(&:quality_management_duration).to_f / @smp_length


    # semifinished + make + normal
    @semifinished_make_normal_materials = Material.where("engineering_release_date IS Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "E").where("strftime('%Y', eis_start_date)     <= ?", "2014")
    @smn_length = @semifinished_make_normal_materials.to_a.length
    @smn_setup_costing_average = @semifinished_make_normal_materials.to_a.sum(&:setup_costing_duration).to_f / @smn_length
    @smn_log_prod_average = @semifinished_make_normal_materials.to_a.sum(&:setup_log_prod_duration).to_f / @smn_length
    @smn_plant_costing_average = @semifinished_make_normal_materials.to_a.sum(&:plant_costing_duration).to_f / @smn_length
    @smn_quality_management_average = @semifinished_make_normal_materials.to_a.sum(&:quality_management_duration).to_f / @smn_length

    # semifinished + buy + normal
    @semifinished_buy_normal_materials = Material.where("engineering_release_date IS Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "F").where("strftime('%Y', eis_start_date)     <= ?", "2014")
    @sbn_length = @semifinished_buy_normal_materials.to_a.length
    @sbn_setup_costing_average = @semifinished_buy_normal_materials.to_a.sum(&:setup_costing_duration).to_f / @sbn_length
    @sbn_setup_purchasing_average = @semifinished_buy_normal_materials.to_a.sum(&:setup_purchasing_duration).to_f / @sbn_length
    @sbn_log_prod_average = @semifinished_buy_normal_materials.to_a.sum(&:setup_log_prod_duration).to_f / @sbn_length
    @sbn_plant_costing_average = @semifinished_buy_normal_materials.to_a.sum(&:plant_costing_duration).to_f / @sbn_length
    @sbn_quality_management_average = @semifinished_buy_normal_materials.to_a.sum(&:quality_management_duration).to_f / @sbn_length

     # semifinished + buy + Pre-series
    @semifinished_buy_pre_materials = Material.where("engineering_release_date IS NOT Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "F").where("strftime('%Y', eis_start_date)     <= ?", "2014")
    @sbp_length = @semifinished_buy_pre_materials.to_a.length
    @sbp_setup_costing_average = @semifinished_buy_pre_materials.to_a.sum(&:setup_costing_duration).to_f / @sbp_length
    @sbp_setup_purchasing_average = @semifinished_buy_pre_materials.to_a.sum(&:setup_purchasing_duration).to_f / @sbp_length
    @sbp_engineering_release_average =  @semifinished_buy_pre_materials.to_a.sum(&:engineering_release_duration).to_f / @sbp_length
    @sbp_finalize_purchasing_average =  @semifinished_buy_pre_materials.to_a.sum(&:finalized_purchasing_duration).to_f / @sbp_length
    @sbp_log_prod_average = @semifinished_buy_pre_materials.to_a.sum(&:setup_log_prod_duration).to_f / @sbp_length
    @sbp_plant_costing_average = @semifinished_buy_pre_materials.to_a.sum(&:plant_costing_duration).to_f / @sbp_length
    @sbp_quality_management_average = @semifinished_buy_pre_materials.to_a.sum(&:quality_management_duration).to_f / @sbp_length

    # finished + make
    @finished_make_materials = Material.where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Finished products", "E").where("strftime('%Y', eis_start_date)     <= ?", "2014")
    @fm_length = @finished_make_materials.to_a.length
    @fm_setup_costing_average = @finished_make_materials.to_a.sum(&:setup_costing_duration).to_f / @fm_length
    @fm_log_prod_average = @finished_make_materials.to_a.sum(&:setup_log_prod_duration).to_f / @fm_length
    @fm_plant_costing_average = @finished_make_materials.to_a.sum(&:plant_costing_duration).to_f / @fm_length
    @fm_quality_management_average = @finished_make_materials.to_a.sum(&:quality_management_duration).to_f / @fm_length

    

# 2015 reports
    # semifinished + make + pre
    @semifinished_make_pre_materials_2015 = Material.where("engineering_release_date IS NOT Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "E").where("strftime('%Y', eis_start_date)     = ?", "2015")
    @smp_length_2015 = @semifinished_make_pre_materials_2015.to_a.length
    @smp_setup_costing_average_2015 = @semifinished_make_pre_materials_2015.to_a.sum(&:setup_costing_duration).to_f / @smp_length_2015
    @smp_engineering_release_average_2015 =  @semifinished_make_pre_materials_2015.to_a.sum(&:engineering_release_duration).to_f / @smp_length_2015
    @smp_log_prod_average_2015 = @semifinished_make_pre_materials_2015.to_a.sum(&:setup_log_prod_duration).to_f / @smp_length_2015
    @smp_plant_costing_average_2015 = @semifinished_make_pre_materials_2015.to_a.sum(&:plant_costing_duration).to_f / @smp_length_2015
    @smp_quality_management_average_2015 = @semifinished_make_pre_materials_2015.to_a.sum(&:quality_management_duration).to_f / @smp_length_2015

    # semifinished + make + normal
    @semifinished_make_normal_materials_2015 = Material.where("engineering_release_date IS Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "E").where("strftime('%Y', eis_start_date)     = ?", "2015")
    @smn_length_2015 = @semifinished_make_normal_materials_2015.to_a.length
    @smn_setup_costing_average_2015 = @semifinished_make_normal_materials_2015.to_a.sum(&:setup_costing_duration).to_f / @smn_length_2015
    @smn_log_prod_average_2015 = @semifinished_make_normal_materials_2015.to_a.sum(&:setup_log_prod_duration).to_f / @smn_length_2015
    @smn_plant_costing_average_2015 = @semifinished_make_normal_materials_2015.to_a.sum(&:plant_costing_duration).to_f / @smn_length_2015
    @smn_quality_management_average_2015 = @semifinished_make_normal_materials_2015.to_a.sum(&:quality_management_duration).to_f / @smn_length_2015

    # semifinished + buy + normal
    @semifinished_buy_normal_materials_2015 = Material.where("engineering_release_date IS Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "F").where("strftime('%Y', eis_start_date)     = ?", "2015")
    @sbn_length_2015 = @semifinished_buy_normal_materials_2015.to_a.length
    @sbn_setup_costing_average_2015 = @semifinished_buy_normal_materials_2015.to_a.sum(&:setup_costing_duration).to_f / @sbn_length_2015
    @sbn_setup_purchasing_average_2015 = @semifinished_buy_normal_materials_2015.to_a.sum(&:setup_purchasing_duration).to_f / @sbn_length_2015
    @sbn_log_prod_average_2015 = @semifinished_buy_normal_materials_2015.to_a.sum(&:setup_log_prod_duration).to_f / @sbn_length_2015
    @sbn_plant_costing_average_2015 = @semifinished_buy_normal_materials_2015.to_a.sum(&:plant_costing_duration).to_f / @sbn_length_2015
    @sbn_quality_management_average_2015 = @semifinished_buy_normal_materials_2015.to_a.sum(&:quality_management_duration).to_f / @sbn_length_2015

    # semifinished + buy + Pre-series
    @semifinished_buy_pre_materials_2015 = Material.where("engineering_release_date IS NOT Null").where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Semifinished products", "F").where("strftime('%Y', eis_start_date)     = ?", "2015")
    @sbp_length_2015 = @semifinished_buy_pre_materials_2015.to_a.length
    @sbp_setup_costing_average_2015 = @semifinished_buy_pre_materials_2015.to_a.sum(&:setup_costing_duration).to_f / @sbp_length_2015
    @sbp_setup_purchasing_average_2015 = @semifinished_buy_pre_materials_2015.to_a.sum(&:setup_purchasing_duration).to_f / @sbp_length_2015
    @sbp_engineering_release_average_2015 =  @semifinished_buy_pre_materials_2015.to_a.sum(&:engineering_release_duration).to_f / @sbp_length_2015
    @sbp_finalize_purchasing_average_2015 =  @semifinished_buy_pre_materials_2015.to_a.sum(&:finalized_purchasing_duration).to_f / @sbp_length_2015
    @sbp_log_prod_average_2015 = @semifinished_buy_pre_materials_2015.to_a.sum(&:setup_log_prod_duration).to_f / @sbp_length_2015
    @sbp_plant_costing_average_2015 = @semifinished_buy_pre_materials_2015.to_a.sum(&:plant_costing_duration).to_f / @sbp_length_2015
    @sbp_quality_management_average_2015 = @semifinished_buy_pre_materials_2015.to_a.sum(&:quality_management_duration).to_f / @sbp_length_2015

    # finished + make
    @finished_make_materials_2015 = Material.where(
                                      "material_type = ? AND procurement_type = ? ",
                                      "Finished products", "E").where("strftime('%Y', eis_start_date)     = ?", "2015")
    @fm_length_2015 = @finished_make_materials_2015.to_a.length
    @fm_setup_costing_average_2015 = @finished_make_materials_2015.to_a.sum(&:setup_costing_duration).to_f / @fm_length_2015
    @fm_log_prod_average_2015 = @finished_make_materials_2015.to_a.sum(&:setup_log_prod_duration).to_f / @fm_length_2015
    @fm_plant_costing_average_2015 = @finished_make_materials_2015.to_a.sum(&:plant_costing_duration).to_f / @fm_length_2015
    @fm_quality_management_average_2015 = @finished_make_materials_2015.to_a.sum(&:quality_management_duration).to_f / @fm_length_2015

  end
end
