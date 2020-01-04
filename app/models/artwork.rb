class Artwork < ApplicationRecord
  validates :title, presence: true

  # has_many :likes
  # has_many :comments
  # has_one_attached :video
  # has_many_attached :photos
end