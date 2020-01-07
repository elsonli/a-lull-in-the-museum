class Artwork < ApplicationRecord

  validates :title, presence: true

  # has_many :likes
  # has_many :comments
  # has_one_attached :video, service: :s3
  has_many_attached :photos # Change to this when ready to use AWS

  
  # https://blog.capsens.eu/how-to-use-activestorage-in-your-rails-5-2-application-cdf3a3ad8d7

end

# /Users/elsonli/Downloads/teamLab\ Borderless/\[01\]\ Universe\ of\ Water\ Particles\ on\ a\ Rock\ where\ People\ Gather/