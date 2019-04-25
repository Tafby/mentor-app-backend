class CreateUserConverstions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_converstions do |t|
      t.integer :conversation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
