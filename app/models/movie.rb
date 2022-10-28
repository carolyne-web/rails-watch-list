class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true

  has_many :bookmarks
end
# A movie must have a unique title and an overview.
# title cannot be blank (FAILED - 1)
# overview cannot be blank (FAILED - 2)
# has many bookmarks (FAILED - 3)
# should not be able to destroy self if has bookmarks children (FAILED - 4)
