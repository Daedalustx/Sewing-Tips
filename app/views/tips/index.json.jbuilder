json.array!(@tips) do |tip|
  json.extract! tip, :id, :title, :headline, :image
  json.url tip_url(tip, format: :json)
end
