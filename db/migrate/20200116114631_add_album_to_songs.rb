class AddAlbumToSongs < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :album, null: true, foreign_key: true
  end
end
