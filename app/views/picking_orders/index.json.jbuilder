json.array!(@picking_orders) do |picking_order|
  json.extract! picking_order, :id, :status, :order_id, :user_id
  json.url picking_order_url(picking_order, format: :json)
end
