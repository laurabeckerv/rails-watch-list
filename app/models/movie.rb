class Movie < ApplicationRecord
  has_many :bookmarks

# Associations
# You can’t delete a movie if it is referenced in at least one bookmark.

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
