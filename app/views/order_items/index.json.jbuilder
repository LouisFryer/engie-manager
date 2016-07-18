json.array!(@order_items) do |order_item|
  json.extract! order_item, :id, :order_ID, :item_code, :item_description, :quantity, :unit, :sub_total
  json.url order_item_url(order_item, format: :json)
end
