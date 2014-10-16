json.array!(@users) do |user|
  json.extract! user, :username, :password, :string
  json.url user_url(user, format: :json)
end