import * as SessionActions from "../actions/session_actions";

const usersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch (action.type) {
    case SessionActions.RECEIVE_USER:
      return Object.assign({}, oldState, { [action.user.id]: action.user });
    case SessionActions.RECEIVE_CURRENT_USER:
      return Object.assign({}, oldState, { [action.currentUser.id]: action.currentUser });
    default:
      return oldState;
  };
};

export default usersReducer;