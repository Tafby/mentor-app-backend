class Mentorship < ApplicationRecord
  belongs_to :mentee, class_name: 'User'
  belongs_to :mentor, class_name: 'User'
  belongs_to :category
  validates :mentee_id, uniqueness: {scope: [:category_id, :mentor_id]}

  ACCEPTED_STATUS = "Accepted"
  PENDING_STATUS = "Pending"
  REJECTED_STATUS = "Rejected"

  def pending?
    status == PENDING_STATUS
  end

  def accepted?
    status == ACCEPTED_STATUS
  end

  def rejected?
    status == REJECTED_STATUS
  end
end
