json.extract! customer, :id, :name, :password, :email, :address, :DOB, :card_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
