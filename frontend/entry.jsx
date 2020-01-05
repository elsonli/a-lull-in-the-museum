import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";
import * as SessionActions from "./actions/session_actions";

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  const store = configureStore();

  // Window Testing Start
  window.userSignup = SessionActions.userSignup;
  window.userLogin = SessionActions.userLogin;
  window.userLogout = SessionActions.userLogout;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // Window Testing End

  ReactDOM.render(<Root store={ store } />, root);
});