json.array!(@registrations) do |registration|
  json.extract! registration, :id, :name, :address, :email, :password
  json.url registration_url(registration, format: :json)
end
