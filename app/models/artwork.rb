class Artwork < ApplicationRecord

  validates :title, presence: true
  validates :video, 

  # has_many :likes
  # has_many :comments
  has_one_attached :video, service: :s3
  # has_many_attached :photos, service: :s3
  
  # https://blog.capsens.eu/how-to-use-activestorage-in-your-rails-5-2-application-cdf3a3ad8d7

end