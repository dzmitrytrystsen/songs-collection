class Song < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :album, optional: true
  belongs_to :genre
  belongs_to :artist

  validates_presence_of :title
end
