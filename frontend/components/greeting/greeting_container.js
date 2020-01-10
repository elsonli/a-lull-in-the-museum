import Greeting from "./greeting";
import { connect } from "react-redux";
import { withRouter } from 'react-router'
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  return {
    currentUser: state.entities.users[state.session.currentUserId]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    userLogout: () => dispatch(SessionActions.userLogout()),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Greeting));