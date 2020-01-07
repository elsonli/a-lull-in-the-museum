@artworks.each do |artwork|
  json.set! artwork.id do
    json.id artwork.id
    json.title artwork.title
    json.urls artwork.photos.map { |photo| url_for(photo) }
  end
end