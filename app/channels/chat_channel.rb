class ChatChannel < ApplicationCable::Channel
  def subscribed
    conversation = Conversation.find(params[:conversation_id])
    puts "Subscribed!"
    stream_for conversation
  end

  def unsubscribed
    puts "Unsubscribed!"
    # Any cleanup needed when channel is unsubscribed
  end
end
