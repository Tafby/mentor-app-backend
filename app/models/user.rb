class User < ApplicationRecord
  has_secure_password
  has_many :mentor_profiles
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def to_token_payload
    {
      sub: id,
      email: email
    }
  end

  # Returns the hash digest of the given string.
def User.digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end
end
