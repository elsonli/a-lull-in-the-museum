import * as CommentAPIUtil from "../util/comment_api_util";

// Action Constants
export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";

// Synchronous Action Creators
const receiveComments = comments => {
  return {
    type: RECEIVE_COMMENTS,
    comments
  };
};

// Asynchronous Thunk Action Creators
export const fetchComments = () => dispatch => {
  return CommentAPIUtil.fetchComments()
    .then(comments => dispatch(receiveComments(comments)));
};