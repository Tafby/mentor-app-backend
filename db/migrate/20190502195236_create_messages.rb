class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body, null: false
      t.references :conversation, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamp :read_at, index: true
      t.timestamps
    end
  end
end
