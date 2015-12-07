class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :status
      t.string :plot
      t.string :genre
      t.string :cover_image
      t.string :runtime

      t.timestamps null: false
    end
  end
end
