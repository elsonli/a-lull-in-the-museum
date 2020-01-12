import * as CommentActions from "../actions/comment_actions";

const _defaultComments = {};

const commentsReducer = (oldState = _defaultComments, action) => {
  Object.freeze(oldState);
  let nextState;
  switch (action.type) {
    case CommentActions.RECEIVE_COMMENTS:
      return action.comments;
    default:
      return oldState;
  };
};

export default commentsReducer;