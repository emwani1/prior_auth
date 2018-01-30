json.extract! user, :id, :npi, :name, :address, :phonenumber, :zipcode, :state, :password, :created_at, :updated_at, :role_id
json.url user_url(user, format: :json)
