json.extract! products_ordered, :id, :order_id, :product_id, :quantity, :comments, :created_at, :updated_at
json.url products_ordered_url(products_ordered, format: :json)
