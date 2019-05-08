class MentorshipSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :status, :created_at
  belongs_to :mentee, class_name: 'User'
  belongs_to :mentor, class_name: 'User'
  has_one :category
end
