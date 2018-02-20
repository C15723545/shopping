json.extract! customer, :id, :name, :email, :address, :latitude, :longitude, :password_digest, :created_at, :updated_at
json.url customer_url(customer, format: :json)
