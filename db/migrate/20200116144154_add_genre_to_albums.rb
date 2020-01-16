class AddGenreToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :genre, null: true, foreign_key: true
  end
end
