json.array!(@orders) do |order|
  json.extract! order, :id, :poNumber, :date, :contactID, :amount, :unitCount, :targetDate, :accepted, :ready, :dispatched, :delivered, :invoiced, :invoiceNumber, :aid
  json.url order_url(order, format: :json)
end
