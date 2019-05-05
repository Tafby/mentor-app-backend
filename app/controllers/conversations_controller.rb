class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    @conversations = UserConversation.where(user_id: current_user.id).includes(:conversation).map(&:conversation)
    render json: @conversations
  end
end
