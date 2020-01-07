export const fetchArtworks = () => {
  return $.ajax({
    method: "GET",
    url: "/api/artworks"
  });
};

export const fetchArtwork = artworkId => {
  return $.ajax({
    method: "GET",
    url: `/api/artworks/${artworkId}`
  });
};