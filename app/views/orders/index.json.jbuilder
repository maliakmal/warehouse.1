json.array!(@orders) do |order|
  json.extract! order, :id, :scheduled, :ref, :type, :product_id, :location_id, :location_id, :status, :company_id, :company_as, :qty, :description, :priority, :user_id
  json.url order_url(order, format: :json)
end
