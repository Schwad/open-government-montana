class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :api_key_token
end
