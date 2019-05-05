module ApplicationCable
  class Connection < ActionCable::Connection::Base
    include Knock::Authenticable

    identified_by :current_user

    private

    def params
      request.params
    end
  end
end
