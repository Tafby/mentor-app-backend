class CreateMentorships < ActiveRecord::Migration[5.2]
  def change
    create_table :mentorships do |t|
      t.integer :mentor_id
      t.integer :mentee_id
      t.integer :category_id
      t.string :status
      

      t.timestamps
    end
  end
end
