class User < ApplicationRecord
  has_secure_password
  has_many :mentor_profiles
  has_many :user_conversations
  has_many :conversations, through: :user_conversations

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
