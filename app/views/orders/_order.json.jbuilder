json.extract! order, :id, :payment_method, :order_status, :date_ordered, :date_recieved, :recieved, :created_at, :updated_at
json.url order_url(order, format: :json)
