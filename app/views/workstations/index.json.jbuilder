json.array!(@workstations) do |workstation|
  json.extract! workstation, :id, :name, :user, :ip, :mac
  json.url workstation_url(workstation, format: :json)
end
