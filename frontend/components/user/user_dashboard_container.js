import { connect } from "react-redux";
import UserDashboard from "./user_dashboard";
import { withRouter } from "react-router-dom";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    likes: state.entities.likes,
    sessionUserId: state.session.currentUserId,
    user: state.entities.users[ownProps.match.params.id]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    fetchUser: userId => dispatch(SessionActions.fetchUser(userId)),
    openModal: modal => dispatch(ModalActions.openModal(modal)),
    destroyLike: likeId => dispatch(LikeActions.destroyLike(likeId))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UserDashboard));