json.array!(@items) do |item|
  json.extract! item, :id, :picking_order_id, :product_id, :location_id, :location_id, :qty
  json.url item_url(item, format: :json)
end
