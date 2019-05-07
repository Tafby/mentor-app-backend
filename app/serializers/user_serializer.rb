class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :location, :interests, :picture
  has_many :mentor_profiles
end
