import * as ArtworkActions from "../actions/artwork_actions";

const _defaultArtworks = {};

const artworksReducer = (oldState = _defaultArtworks, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case ArtworkActions.RECEIVE_ARTWORKS:
      return action.artworks;
    case ArtworkActions.RECEIVE_ARTWORK:
      newState = Object.assign({}, oldState);
      newState[action.artwork.id] = action.artwork;
      return newState;
    default:
      return oldState;;
  };
};

export default artworksReducer;