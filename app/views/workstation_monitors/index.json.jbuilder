json.array!(@workstation_monitors) do |workstation_monitor|
  json.extract! workstation_monitor, :id, :brand, :size, :resolution_width, :resolution_hight, :remarks
  json.url workstation_monitor_url(workstation_monitor, format: :json)
end
