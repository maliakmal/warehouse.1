json.array!(@reorder_rules) do |reorder_rule|
  json.extract! reorder_rule, :id, :product_id, :minimum_stock, :maximum_stock, :company_id
  json.url reorder_rule_url(reorder_rule, format: :json)
end
