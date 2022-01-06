class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, length: { minimum: 1 }
  validates :overview, length: { minimum: 1 }
  has_many :bookmarks
end
