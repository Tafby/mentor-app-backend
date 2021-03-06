class CreateMentorProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mentor_profiles do |t|
      t.integer :user_id
      t.integer :category_id
      t.text :description
      t.boolean :active, default: false
      t.string :days_can_meet
      t.integer :years_mentoring


      t.timestamps
    end
  end
end
