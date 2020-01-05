import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import SessionForm from "./session_form";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  return {
    errors: state.errors.session,
    formType: "Log In",
    navLink: <Link to="/signup">Sign Up Instead</Link>
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: user => dispatch(SessionActions.userLogin(user))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);