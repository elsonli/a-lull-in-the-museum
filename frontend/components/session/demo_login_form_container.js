import React from "react";
import { connect } from "react-redux";
import SessionForm from "./session_form";
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  dispatch(SessionActions.clearSessionErrors());
  return {
    userState: {
      username: "TestUser",
      password: "DemoLogin"
    },
    errors: state.errors.session,
    formType: "DEMO LOG IN",
    formText: null
  };
};

const mapDispatchToProps = dispatch => {
  const demoUser = {
    username: "TestUser",
    password: "DemoLogin"
  };
  return {
    otherForm: null,
    closeModal: () => dispatch(ModalActions.closeModal()),
    openModal: modal => dispatch(ModalActions.openModal(modal)),
    processForm: () => dispatch(SessionActions.userLogin(demoUser))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);