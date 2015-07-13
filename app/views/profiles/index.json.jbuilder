json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :gender, :country, :state, :intrest
  json.url profile_url(profile, format: :json)
end
