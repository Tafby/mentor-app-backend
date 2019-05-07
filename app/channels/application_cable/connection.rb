module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      knock_auth_token = Knock::AuthToken.new(token: request.params["token"])
      if verified_user = knock_auth_token.entity_for(User)
        verified_user
      else
        reject_unauthorized_connection
      end
    rescue JWT::VerificationError, ActiveRecord::RecordNotFound
      reject_unauthorized_connection
    end
  end
end
