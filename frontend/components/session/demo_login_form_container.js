import React from "react";
import { connect } from "react-redux";
import SessionForm from "./session_form";
import * as SessionActions from "../../actions/session_actions";
import * as ModalActions from "../../actions/modal_actions";

const mapStateToProps = state => {
  dispatch(SessionActions.clearSessionErrors());
  return {
    userState: {
      username: "TestUser",
      password: "DemoLogin"
    },
    errors: state.errors.session,
    formType: "DEMO LOG IN"
  };
};

// Seed Demo User
const mapDispatchToProps = dispatch => {
  const demoUser = {
    username: "TestUser",
    password: "DemoLogin"
  };
  return {
    processForm: () => dispatch(SessionActions.userLogin(demoUser)),
    otherForm: null,
    closeModal: () => dispatch(ModalActions.closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);