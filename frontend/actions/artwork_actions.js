import * as ArtworkAPIUtil from "../util/artwork_api_util";

// Action Constants
export const RECEIVE_ARTWORKS = "RECEIVE_ARTWORKS";
export const RECEIVE_ARTWORK = "RECEIVE_ARTWORK";

// Synchronous Action Creators
const receiveArtworks = artworks => {
  return {
    type: RECEIVE_ARTWORKS,
    artworks
  };
};

const receiveArtwork = artwork => {
  return {
    type: RECEIVE_ARTWORK,
    artwork
  };
};

// Asynchronous Thunk Action Creators
export const fetchArtworks = () => dispatch => {
  return ArtworkAPIUtil.fetchArtworks()
    .then(artworks => dispatch(receiveArtworks(artworks)));
};

export const fetchArtwork = artworkId => dispatch => {
  return ArtworkAPIUtil.fetchArtwork(artworkId)
    .then(artwork => dispatch(receiveArtwork(artwork)));
};