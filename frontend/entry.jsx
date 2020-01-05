import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";
import * as SessionActions from "./actions/session_actions";

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { currentUserId: window.currentUser.id }
    };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }
  
  // delete window.currentUser;

  // Window Testing Start
  window.userSignup = SessionActions.userSignup;
  window.userLogin = SessionActions.userLogin;
  window.userLogout = SessionActions.userLogout;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // Window Testing End
  
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={ store } />, root);
});