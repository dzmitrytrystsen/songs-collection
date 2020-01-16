class Song < ApplicationRecord
  belongs_to :album, optional: true
  belongs_to :artist

  validates_presence_of :title
end
