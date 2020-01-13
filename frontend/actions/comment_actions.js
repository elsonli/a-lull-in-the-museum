import * as CommentAPIUtil from "../util/comment_api_util";

// Action Constants
export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";

// Synchronous Action Creators
const receiveComments = comments => {
  return {
    type: RECEIVE_COMMENTS,
    comments
  };
};

const receiveComment = comment => {
  return {
    type: RECEIVE_COMMENT,
    comment
  };
};

// Asynchronous Thunk Action Creators
export const fetchComments = () => dispatch => {
  return CommentAPIUtil.fetchComments()
    .then(comments => dispatch(receiveComments(comments)));
};

export const createComment = comment => dispatch => {
  return CommentAPIUtil.createComment(comment)
    .then(comment => dispatch(receiveComment(comment)));
};