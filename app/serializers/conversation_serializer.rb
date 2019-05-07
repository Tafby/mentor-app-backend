class ConversationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :messages
  has_many :user_conversations
  has_many :users, through: :user_conversations
end
