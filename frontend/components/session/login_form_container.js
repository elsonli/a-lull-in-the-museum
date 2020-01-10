import React from "react";
import { connect } from "react-redux";
import SessionForm from "./session_form";
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  dispatch(SessionActions.clearSessionErrors());
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
      <a onClick={ () => dispatch(ModalActions.openModal("signup")) }>
        Sign Up
      </a>
    ),
    closeModal: () => dispatch(ModalActions.closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);