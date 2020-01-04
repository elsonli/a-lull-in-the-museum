import React from "react";
import ReactDOM from "react-dom";
import * as SessionAPIUtil from "./util/session_api_util"

document.addEventListener("DOMContentLoaded", () => {

  // Window Testing Start
  window.userLogin = SessionAPIUtil.userLogin;
  window.userLogout = SessionAPIUtil.userLogout;
  window.userSignup = SessionAPIUtil.userSignup;
  // Window Testing End

  const root = document.getElementById("root");
  ReactDOM.render(<h1>React Works</h1>, root);
});