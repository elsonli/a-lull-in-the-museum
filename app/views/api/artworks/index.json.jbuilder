@artworks.each do |artwork|
  json.set! artwork.id do
    json.partial! "/api/artworks/artwork", artwork: artwork
  end
end