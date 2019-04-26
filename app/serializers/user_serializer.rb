class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :password, :string, :location, :interests
end
