import * as CommentAPIUtil from "../util/comment_api_util";

// Action Constants
export const REMOVE_COMMENT = "REMOVE_COMMENT";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const CLEAR_COMMENT_ERRORS = "CLEAR_COMMENT_ERRORS";
export const RECEIVE_COMMENT_ERRORS = "RECEIVE_COMMENT_ERRORS";

// Synchronous Action Creators
const removeComment = commentId => {
  return {
    type: REMOVE_COMMENT,
    commentId
  };
};

const receiveComment = comment => {
  return {
    type: RECEIVE_COMMENT,
    comment
  };
};

const receiveComments = comments => {
  return {
    type: RECEIVE_COMMENTS,
    comments
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

export const fetchComment = commentId => dispatch => {
  return CommentAPIUtil.fetchComment(commentId).then(
    comment => dispatch(receiveComment(comment)),
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

export const patchComment = comment => dispatch => {
  return CommentAPIUtil.patchComment(comment).then(
    () => dispatch(receiveComment(comment)),
    errors => dispatch(receiveCommentErrors(errors.responseJSON))
  );
};