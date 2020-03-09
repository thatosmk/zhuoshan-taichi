class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.text :about
      t.text :history
      t.text :dress_code
      t.text :class_times
      t.text :contacts
      t.string :coach_name
      t.text :coach_bio
      t.string :facebook
      t.string :instagram
      t.string :youtube

      t.timestamps
    end
  end
end
