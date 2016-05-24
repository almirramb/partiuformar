json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :cpf_attr, :email, :password_digest
  json.url user_url(user, format: :json)
end
