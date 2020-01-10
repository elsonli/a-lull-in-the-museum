import * as ModalActions from "../actions/modal_actions";
import * as SessionActions from "../actions/session_actions";

const _defaultErrors = [];

const sessionErrorsReducer = (oldState = _defaultErrors, action) => {
  switch (action.type) {
    case SessionActions.RECEIVE_SESSION_ERRORS:
      return action.errors;
    case SessionActions.RECEIVE_CURRENT_USER:
      return _defaultErrors;
    case SessionActions.CLEAR_SESSION_ERRORS:
      return _defaultErrors;
    case ModalActions.CLOSE_MODAL:
      return [];
    default:
      return oldState;
  };
};

export default sessionErrorsReducer;