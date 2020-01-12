import * as LikeActions from "../actions/like_actions";

const _defaultLikes = {};

const likesReducer = (oldState = _defaultLikes, action) => {
  Object.freeze(oldState);
  let nextState;
  switch (action.type) {
    case LikeActions.RECEIVE_LIKES:
      return action.likes;
    case LikeActions.RECEIVE_LIKE:
      nextState = Object.assign({}, oldState);
      console.log(action);
      nextState[action.like.id] = action.like;
      return nextState;
    // case LikeActions.REMOVE_LIKE:
    //   nextState = Object.assign({}, oldState);
    //   delete nextState[action.likeId];
    //   return nextState;
    default:
      return oldState;
  };
};

export default likesReducer;