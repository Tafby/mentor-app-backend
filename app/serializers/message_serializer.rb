class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :body, :created_at, :full_name


  def full_name
    object.user.full_name
  end
end
