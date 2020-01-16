class CreateGenresArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :genres_artists do |t|
      t.references :genre, null: true, foreign_key: true
      t.references :artist, null: true, foreign_key: true

      t.timestamps
    end
  end
end
