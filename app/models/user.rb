class User < ApplicationRecord
  has_many :mentorShips
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
