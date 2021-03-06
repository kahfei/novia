json.array!(@materials) do |material|
  json.extract! material, :id, :number, :description, :plant_status, :material_type, :procurement_type, :eis_start_date, :setup_costing_date, :setup_purchasing_date, :engineering_release_date, :finalized_purchasing_date, :clp_prl_date, :clp_sdl_date, :work_scheduling, :plant_costing_date, :quality_management_date
  json.url material_url(material, format: :json)
end
