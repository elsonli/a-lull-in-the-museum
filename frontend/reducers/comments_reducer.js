import * as CommentActions from "../actions/comment_actions";

const _defaultState = {};

const commentsReducer = (oldState = _defaultState, action) => {
  Object.freeze(oldState);
  let nextState;
  switch (action.type) {
    case CommentActions.RECEIVE_COMMENTS:
      return action.comments;
    case CommentActions.RECEIVE_COMMENT:
      nextState = Object.assign({}, oldState);
      nextState[action.comment.id] = action.comment;
      return nextState;
    case CommentActions.REMOVE_COMMENT:
      nextState = Object.assign({}, oldState);
      delete nextState[action.commentId];
      return nextState;
    default:
      return oldState;
  };
};

export default commentsReducer;