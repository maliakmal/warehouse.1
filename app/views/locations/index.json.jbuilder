json.array!(@locations) do |location|
  json.extract! location, :id, :name, :description, :x, :y, :z, :barcode, :ref
  json.url location_url(location, format: :json)
end
