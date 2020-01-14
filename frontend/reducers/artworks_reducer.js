import * as ArtworkActions from "../actions/artwork_actions";

const _defaultState = {};

const artworksReducer = (oldState = _defaultState, action) => {
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
      return oldState;
  };
};

export default artworksReducer;