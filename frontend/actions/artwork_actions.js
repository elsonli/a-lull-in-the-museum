import * as ArtworkAPIUtil from "../util/artwork_api_util";

// Action Constants
export const RECEIVE_ARTWORK = "RECEIVE_ARTWORK";
export const RECEIVE_ARTWORKS = "RECEIVE_ARTWORKS";

// Synchronous Action Creators
const receiveArtwork = artwork => {
  return {
    type: RECEIVE_ARTWORK,
    artwork
  };
};

const receiveArtworks = artworks => {
  return {
    type: RECEIVE_ARTWORKS,
    artworks
  };
};

// Asynchronous Thunk Action Creators
export const fetchArtwork = artworkId => dispatch => {
  return ArtworkAPIUtil.fetchArtwork(artworkId)
    .then(artwork => dispatch(receiveArtwork(artwork)));
};

export const fetchArtworks = () => dispatch => {
  return ArtworkAPIUtil.fetchArtworks()
    .then(artworks => dispatch(receiveArtworks(artworks)));
};