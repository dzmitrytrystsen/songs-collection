class Artist < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :songs
  has_many :albums
  has_many :genres_artists
  has_many :genres, through: :genres_artists

  validates_presence_of :name
end
