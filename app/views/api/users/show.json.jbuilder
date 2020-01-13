json.partial! "api/users/user", user: @user
json.likedArtworks @user.liked_artworks.each do |artwork|
  json.partial! "api/artworks/artwork", artwork: artwork
end