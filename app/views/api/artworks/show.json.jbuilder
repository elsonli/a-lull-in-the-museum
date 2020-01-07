# json.array! @artwork.photos.each do |photo|
#   json.photo url_for(photo)
#   # json.artworkUrl url_for(photo)
# end

photoUrls = @artwork.photos.map { |photo| url_for(photo) }
json.photoUrls photoUrls

# @artwork.photos.each do |photo|
#   json.extract! photo, url_for(photo)
# end

# json.array! @photos

# json.array! @artwork.photos.each do |photo|
#   url_for(photo)
# end