class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :desc
      t.string :youtube_id
      t.string :category

      t.timestamps
    end
  end
end
