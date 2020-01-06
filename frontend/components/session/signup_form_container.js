import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import SessionForm from "./session_form";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  dispatch(SessionActions.clearSessionErrors());
  return {
    userState: {
      username: "",
      password: ""
    },
    errors: state.errors.session,
    formType: "Sign Up",
    navLink: <Link to="/login">Log In Instead</Link>
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: user => dispatch(SessionActions.userSignup(user))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);