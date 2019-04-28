class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    # TODO: Make this only return conversations for the current_user...?
    @conversations = Conversation.all
    render json: @conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    render json: @conversation
  end

  private
end
