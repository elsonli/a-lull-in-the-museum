import React from "react";
import { connect } from "react-redux";
import SessionForm from "./session_form";
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  return {
    userState: {
      username: "",
      password: ""
    },
    errors: state.errors.session,
    formType: "DEMO LOG IN",
  };
};

const mapDispatchToProps = dispatch => {
  const demoUser = {
    username: "TestUser",
    password: "DemoLogin"
  };
  return {
    closeModal: () => dispatch(ModalActions.closeModal()),
    openModal: modal => dispatch(ModalActions.openModal(modal)),
    processForm: () => dispatch(SessionActions.userLogin(demoUser)),
    clearSessionErrors: () => dispatch(SessionActions.clearSessionErrors())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);