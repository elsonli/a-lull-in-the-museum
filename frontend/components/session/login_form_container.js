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
    formType: "LOG IN",
    formText: "Become a wanderer."
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: user => dispatch(SessionActions.userLogin(user)),
    otherForm: (
      <a onClick={ () => dispatch(ModalActions.openModal({ type: "signup" })) }>
        Sign Up
      </a>
    ),
    closeModal: () => dispatch(ModalActions.closeModal()),
    openModal: modal => dispatch(ModalActions.openModal(modal)),
    clearSessionErrors: () => dispatch(SessionActions.clearSessionErrors())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);