import * as SessionAPIUtil from "../util/session_api_util";

// Action Constants
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const CLEAR_SESSION_ERRORS = "CLEAR_SESSION_ERRORS";

// Synchronous Action Creators
const receiveCurrentUser = currentUser => {
  return {
    type: RECEIVE_CURRENT_USER,
    currentUser
  };
};

const logoutCurrentUser = () => {
  return {
    type: LOGOUT_CURRENT_USER,
  };
};

const receiveSessionErrors = errors => {
  return {
    type: RECEIVE_SESSION_ERRORS,
    errors
  };
};

export const clearSessionErrors = () => {
  return {
    type: CLEAR_SESSION_ERRORS
  };
};

// Asynchronous Thunk Action Creators
// export const fetchUser = userId => dispatch => {
//   return SessionAPIUtil.fetchUser
// };

export const userSignup = user => dispatch => {
  return SessionAPIUtil.userSignup(user).then(
    user => dispatch(receiveCurrentUser(user)),
    errors => dispatch(receiveSessionErrors(errors.responseJSON))
  );
};
  
export const userLogin = user => dispatch => {
  return SessionAPIUtil.userLogin(user).then(
    user => dispatch(receiveCurrentUser(user)),
    errors => dispatch(receiveSessionErrors(errors.responseJSON))
  );
};
    
export const userLogout = () => dispatch => {
  return SessionAPIUtil.userLogout().then(
    () => dispatch(logoutCurrentUser()),
    errors => dispatch(receiveSessionErrors(errors))
  );
};