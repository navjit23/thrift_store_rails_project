json.extract! card, :id, :number, :address, :cvv, :exp_date, :customer_id, :created_at, :updated_at
json.url card_url(card, format: :json)
