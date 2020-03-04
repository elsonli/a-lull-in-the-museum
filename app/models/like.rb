class Like < ApplicationRecord

  validates :user_id, uniqueness: { scope: :artwork_id }

  belongs_to :user
  belongs_to :artwork
  
end
