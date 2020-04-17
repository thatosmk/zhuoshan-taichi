class CreateTaichiFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :taichi_files do |t|
      t.string :title
      t.string :desc
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
