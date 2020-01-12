import * as LikeActions from "../actions/like_actions";

const _defaultLikes = {};

const likesReducer = (oldState = _defaultLikes, action) => {
  Object.freeze(oldState);
  // let newState;
  switch (action.type) {
    case LikeActions.RECEIVE_LIKES:
      return action.likes;
    // case LikeActions.RECEIVE_LIKE:
    //   newState = Object.assign({}, oldState);
    //   newState[action.like.id] = action.like;
    //   return newState;
    // case LikeActions.REMOVE_LIKE:
    //   newState = Object.assign({}, oldState);
    //   delete newState[action.likeId];
    //   return newState;
    default:
      return oldState;
  };
};

export default likesReducer;