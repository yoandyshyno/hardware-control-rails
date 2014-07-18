json.array!(@graphic_cards) do |graphic_card|
  json.extract! graphic_card, :id, :model, :manufacturer, :compatible3d, :remarks
  json.url graphic_card_url(graphic_card, format: :json)
end
