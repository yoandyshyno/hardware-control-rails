json.array!(@os_distros) do |os_distro|
  json.extract! os_distro, :id, :codename, :version, :support_expiration_date, :remarks
  json.url os_distro_url(os_distro, format: :json)
end
