class MessagesController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:create]
  # skip_before_action :verify_authenticity_token, only: :create
  before_action :authenticate_user
  before_action :authenticate_conversation_participant

  def index
    @messages = Message.where(conversation_id: params[:conversation_id])
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      ChatChannel.broadcast_to @message.conversation, MessageSerializer.new(@message)
      head :created
    end
  end
  
  private

  def authenticate_conversation_participant
    user_conversation = UserConversation.find_by(user_id: current_user.id, conversation_id: params[:conversation_id])
    head :not_found unless user_conversation
  end
  
  def message_params
    params.require(:message).permit(:body).merge(user_id: current_user.id, conversation_id: params[:conversation_id])
  end
end
