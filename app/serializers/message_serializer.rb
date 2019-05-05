class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :body, :created_at, :user_id
end
