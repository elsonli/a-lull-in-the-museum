class Artwork < ApplicationRecord

  validates :title, presence: true

  has_many :likes
  has_many :comments
  has_many_attached :videos
  has_many_attached :photos

end