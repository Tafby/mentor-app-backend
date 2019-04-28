class MessagesController < ApplicationController
  before_action :authenticate_user

  def index
    @messages = Message.where(conversation_id: params[:conversation_id])
    render json: @messages
  end

  def create
    @message = Message.create(
      message_params.merge(
        user_id: current_user.id,
        conversation_id: params[:conversation_id],
      )
    )
    render json: @message
  end

  private

  def message_params 
    params.require(:message).permit(:body)
  end
end
