json.extract! order, :id, :status, :customer_id, :province_id, :created_at, :updated_at
json.url order_url(order, format: :json)