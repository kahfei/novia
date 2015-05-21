require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { clp_prl_date: @material.clp_prl_date, clp_sdl_date: @material.clp_sdl_date, description: @material.description, eis_start_date: @material.eis_start_date, engineering_release_date: @material.engineering_release_date, finalized_purchasing_date: @material.finalized_purchasing_date, number: @material.number, plant_costing_date: @material.plant_costing_date, plant_status: @material.plant_status, procurement_type: @material.procurement_type, quality_management_date: @material.quality_management_date, setup_costing_date: @material.setup_costing_date, setup_purchasing_date: @material.setup_purchasing_date, type: @material.type, work_scheduling: @material.work_scheduling }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    patch :update, id: @material, material: { clp_prl_date: @material.clp_prl_date, clp_sdl_date: @material.clp_sdl_date, description: @material.description, eis_start_date: @material.eis_start_date, engineering_release_date: @material.engineering_release_date, finalized_purchasing_date: @material.finalized_purchasing_date, number: @material.number, plant_costing_date: @material.plant_costing_date, plant_status: @material.plant_status, procurement_type: @material.procurement_type, quality_management_date: @material.quality_management_date, setup_costing_date: @material.setup_costing_date, setup_purchasing_date: @material.setup_purchasing_date, type: @material.type, work_scheduling: @material.work_scheduling }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materials_path
  end
end
