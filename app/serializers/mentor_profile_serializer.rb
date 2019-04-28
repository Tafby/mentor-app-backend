class MentorProfileSerializer < ActiveModel::Serializer
  attributes :id, :description, :active
  belongs_to :user
  belongs_to :category
end
