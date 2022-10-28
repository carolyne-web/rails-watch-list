class List < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end

    # A list must have a unique name
    # A list has many bookmarks
    # A list has many movies through bookmarks
    # should destroy child saved movies when destroying self
