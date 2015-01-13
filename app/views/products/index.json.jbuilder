json.array!(@products) do |product|
  json.extract! product, :id, :name, :barcode, :ref, :active, :description
  json.url product_url(product, format: :json)
end
