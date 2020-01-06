import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import SessionForm from "./session_form";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  return {
    userState: {
      username: "TestUser",
      password: "DemoLogin"
    },
    errors: state.errors.session,
    formType: "Log In",
    navLink: <Link to="/login">Demo Login</Link>
  };
};

// Seed Demo User
const mapDispatchToProps = dispatch => {
  const demoUser = {
    username: "TestUser",
    password: "DemoLogin"
  };
  return {
    processForm: () => dispatch(SessionActions.userLogin(demoUser))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);