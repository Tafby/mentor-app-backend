class MentorshipSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :status, :created_at
  belongs_to :mentee, class_name: 'User'
end
