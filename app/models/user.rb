class User < ApplicationRecord
  has_secure_password
  has_many :mentor_profiles
  has_many :mentorships, foreign_key: 'mentor_id'
  has_many :user_conversations
  has_many :conversations, through: :user_conversations
  has_many :messages

  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
