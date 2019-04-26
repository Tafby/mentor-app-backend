class MessagesController < ApplicationController
  def index
  @messages = Message.all
  end
  

  
  def create
  @message = Message.create(message_params)
  end
  
  
  def show
  
  end

  private 
  def message_params 
    params.require(:messages).permit(:body, :user_id, :conversation_id)
  end
end
