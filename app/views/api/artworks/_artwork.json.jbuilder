json.id artwork.id
json.title artwork.title
json.description artwork.description
json.urls artwork.photos.map { |photo| url_for(photo) }
json.vids artwork.videos.map { |vid| url_for(vid) }