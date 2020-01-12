class Artwork < ApplicationRecord

  validates :title, presence: true

  has_many :likes
  # has_many :comments
  has_many_attached :videos
  has_many_attached :photos
  
  # https://blog.capsens.eu/how-to-use-activestorage-in-your-rails-5-2-application-cdf3a3ad8d7

end

# /Users/elsonli/Downloads/teamLab\ Borderless/\[01\]\ Universe\ of\ Water\ Particles\ on\ a\ Rock\ where\ People\ Gather/