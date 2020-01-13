import * as ModalActions from "../actions/modal_actions";
import * as CommentActions from "../actions/comment_actions";

const _defaultErrors = [];

const commentErrorsReducer = (oldState = _defaultErrors, action) => {
  Object.freeze(oldState);
  switch (action.type) {
    case CommentActions.RECEIVE_COMMENT_ERRORS:
      return action.errors;
    case CommentActions.RECEIVE_COMMENT:
      return _defaultErrors;
    case CommentActions.CLEAR_COMMENT_ERRORS:
      return _defaultErrors;
    case ModalActions.CLOSE_MODAL:
      return [];
    default:
      return oldState;
  };
};

export default commentErrorsReducer;