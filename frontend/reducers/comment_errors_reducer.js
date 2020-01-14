import * as ModalActions from "../actions/modal_actions";
import * as CommentActions from "../actions/comment_actions";

const _defaultState = [];

const commentErrorsReducer = (oldState = _defaultState, action) => {
  Object.freeze(oldState);
  switch (action.type) {
    case CommentActions.RECEIVE_COMMENT_ERRORS:
      return action.errors;
    case CommentActions.RECEIVE_COMMENT:
      return _defaultState;
    case CommentActions.CLEAR_COMMENT_ERRORS:
      return _defaultState;
    case ModalActions.CLOSE_MODAL:
      return _defaultState;
    default:
      return oldState;
  };
};

export default commentErrorsReducer;