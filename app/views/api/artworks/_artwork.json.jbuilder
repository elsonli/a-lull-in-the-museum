json.id artwork.id
json.title artwork.title
json.description artwork.description
json.photoUrls artwork.photos.map { |photo| url_for(photo) }
json.videoUrls artwork.videos.map { |video| url_for(video) }