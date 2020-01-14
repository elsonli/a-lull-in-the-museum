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
    formType: "SIGN UP",
    formText: "Immerse yourself in art."
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: user => dispatch(SessionActions.userSignup(user)),
    otherForm: (
      <a onClick={ () => dispatch(ModalActions.openModal({ type: "login" })) }>
        Log In
      </a>
    ),
    closeModal: () => dispatch(ModalActions.closeModal()),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);