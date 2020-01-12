import * as LikeAPIUtil from "../util/like_api_util";

// Action Constants
export const RECEIVE_LIKES = "RECEIVE_LIKES";
export const RECEIVE_LIKE = "RECEIVE_LIKE";
export const REMOVE_LIKE = "REMOVE_LIKE";

// Synchronous Action Creators
const receiveLikes = likes => {
  return {
    type: RECEIVE_LIKES,
    likes
  };
};

const receiveLike = like => {
  return {
    type: RECEIVE_LIKE,
    like
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
