class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :conversation_id, :body
  belongs_to :conversation 
end
