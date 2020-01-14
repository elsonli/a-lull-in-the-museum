import * as SessionActions from "../actions/session_actions";

const _defaultState = {};

const usersReducer = (oldState = _defaultState, action) => {
  Object.freeze(oldState);
  let nextState;
  switch (action.type) {
    case SessionActions.RECEIVE_USER:
      nextState = Object.assign({}, oldState);
      nextState[action.user.id] = action.user;
      return nextState;
    case SessionActions.RECEIVE_CURRENT_USER:
      nextState = Object.assign({}, oldState);
      nextState[action.currentUser.id] = action.currentUser;
      return nextState;
    default:
      return oldState;
  };
};

export default usersReducer;