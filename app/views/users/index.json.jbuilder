json.array!(@users) do |user|
  json.extract! user, :id, :full_name, :first_name, :middle_name, :last_name, :username, :role
  json.url user_url(user, format: :json)
end
