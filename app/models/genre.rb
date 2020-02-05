class Genre < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :songs
  has_many :albums
  has_many :genres_artists
  has_many :artists, through: :genres_artists
end
