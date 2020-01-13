import * as CommentAPIUtil from "../util/comment_api_util";

// Action Constants
export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const REMOVE_COMMENT = "REMOVE_COMMENT";
export const RECEIVE_COMMENT_ERRORS = "RECEIVE_COMMENT_ERRORS";
export const CLEAR_COMMENT_ERRORS = "CLEAR_COMMENT_ERRORS";

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

const removeComment = commentId => {
  return {
    type: REMOVE_COMMENT,
    commentId
  };
};

const receiveCommentErrors = errors => {
  return {
    type: RECEIVE_COMMENT_ERRORS,
    errors
  };
};

export const clearCommentErrors = () => {
  return {
    type: CLEAR_COMMENT_ERRORS
  };
};

// Asynchronous Thunk Action Creators
export const fetchComments = () => dispatch => {
  return CommentAPIUtil.fetchComments().then(
    comments => dispatch(receiveComments(comments)),
    errors => dispatch(receiveCommentErrors(errors.responseJSON))
  );
};

export const createComment = comment => dispatch => {
  return CommentAPIUtil.createComment(comment).then(
    comment => dispatch(receiveComment(comment)),
    errors => dispatch(receiveCommentErrors(errors.responseJSON))
  );
};

export const destroyComment = commentId => dispatch => {
  return CommentAPIUtil.destroyComment(commentId).then(
    () => dispatch(removeComment(commentId)),
    errors => dispatch(receiveCommentErrors(errors.responseJSON))
  );
};

export const patchComment = commentId => dispatch => {
  return CommentAPIUtil.patchComment(commentId).then(
    () => dispatch(receiveComment(commentId)),
    errors => dispatch(receiveCommentErrors(errors.responseJSON))
  );
};