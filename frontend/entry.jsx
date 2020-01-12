import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";
import * as LikeActions from "./actions/like_actions";
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
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  
  // Window Testing Start
  window.userSignup = SessionActions.userSignup;
  window.userLogin = SessionActions.userLogin;
  window.userLogout = SessionActions.userLogout;
  window.fetchLikes = LikeActions.fetchLikes;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // Window Testing End
  
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={ store } />, root);
});