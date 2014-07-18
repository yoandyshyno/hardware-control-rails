json.array!(@components) do |component|
  json.extract! component, :id, :type, :size, :remarks
  json.url component_url(component, format: :json)
end
