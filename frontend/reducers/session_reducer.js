import * as SessionActions from "../actions/session_actions";

const _defaultSession = {
  currentUserId: null
};

const sessionReducer = (oldState = _defaultSession, action) => {
  Object.freeze(oldState);
  switch (action.type) {
    case SessionActions.RECEIVE_CURRENT_USER:
      return { currentUserId: action.currentUser.id };
    case SessionActions.LOGOUT_CURRENT_USER:
      return _defaultSession;
    default:
      return oldState;
  };
};

export default sessionReducer;