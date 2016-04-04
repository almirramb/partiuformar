json.array!(@users) do |user|
  json.extract! user, :id, :registration, :name, :last_name, :current_semester, :year_registration, :email, :password_digest
  json.url user_url(user, format: :json)
end
