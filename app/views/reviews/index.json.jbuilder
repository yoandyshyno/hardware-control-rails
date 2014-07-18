json.array!(@reviews) do |review|
  json.extract! review, :id, :date, :workstation_id, :monitor1, :monitor2, :monitor3, :hardware, :graphic_card_id, :os_distro_id, :remarks
  json.url review_url(review, format: :json)
end
