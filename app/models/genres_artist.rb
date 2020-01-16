class GenresArtist < ApplicationRecord
  belongs_to :genre
  belongs_to :artist
end
