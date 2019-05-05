class CreateUserConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_conversations do |t|
      t.references :conversation, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end

    add_index :user_conversations, [:conversation_id, :user_id], unique: true
  end
end
