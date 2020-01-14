import * as LikeAPIUtil from "../util/like_api_util";

// Action Constants
export const REMOVE_LIKE = "REMOVE_LIKE";
export const RECEIVE_LIKE = "RECEIVE_LIKE";
export const RECEIVE_LIKES = "RECEIVE_LIKES";

// Synchronous Action Creators
const receiveLike = like => {
  return {
    type: RECEIVE_LIKE,
    like
  };
};

const receiveLikes = likes => {
  return {
    type: RECEIVE_LIKES,
    likes
  };
};

const removeLike = likeId => {
  return {
    type: REMOVE_LIKE,
    likeId
  };
};

// Asynchronous Thunk Action Creators
export const fetchLikes = () => dispatch => {
  return LikeAPIUtil.fetchLikes()
    .then(likes => dispatch(receiveLikes(likes)));
};

export const createLike = like => dispatch => {
  return LikeAPIUtil.createLike(like)
    .then(like => dispatch(receiveLike(like)));
};

export const destroyLike = likeId => dispatch => {
  return LikeAPIUtil.destroyLike(likeId)
    .then(() => dispatch(removeLike(likeId)));
};
