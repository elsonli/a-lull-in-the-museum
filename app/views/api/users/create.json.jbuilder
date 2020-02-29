json.partial! "api/users/user", user: @user
json.likedArtworks @user.liked_artworks, partial: "api/artworks/artwork", as: :artwork