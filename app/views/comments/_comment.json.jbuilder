json.extract! comment, :id, :comment, :rating, :product_id, :customer_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
