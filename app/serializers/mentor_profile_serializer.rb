class MentorProfileSerializer < ActiveModel::Serializer
  attributes :id, :description, :active, :days_can_meet, :years_mentoring, :category
  belongs_to :user
  belongs_to :category
end
