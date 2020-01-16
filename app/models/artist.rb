class Artist < ApplicationRecord
  has_many :songs
  has_many :albums

  validates_presence_of :name
end
