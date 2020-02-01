class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :desc
      t.datetime :from
      t.datetime :until
      t.text :notes

      t.timestamps
    end
  end
end
