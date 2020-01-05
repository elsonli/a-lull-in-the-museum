import { connect } from "react-redux";
import Greeting from "./greeting";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = state => {
  return {
    currentUser: state.entities.users[state.session.currentUserId]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    userLogout: () => dispatch(SessionActions.userLogout())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Greeting);