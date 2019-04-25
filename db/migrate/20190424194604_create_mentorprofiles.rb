class CreateMentorprofiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mentorprofiles do |t|
      t.integer :user_id
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end
end
