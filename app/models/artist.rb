class Artist < ApplicationRecord
  has_many :songs
  has_many :albums
  has_many :genres_artists
  has_many :genres, through: :genres_artists

  validates_presence_of :name
end
