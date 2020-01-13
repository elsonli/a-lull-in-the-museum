import { connect } from "react-redux";
import UserDashboard from "./user_dashboard";
import { withRouter } from "react-router-dom";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as SessionActions from "../../actions/session_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    user: state.entities.users[ownProps.match.params.id],
    sessionUserId: state.session.currentUserId,
    likes: state.entities.likes
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchUser: userId => dispatch(SessionActions.fetchUser(userId)),
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    createLike: like => dispatch(LikeActions.createLike(like)),
    destroyLike: likeId => dispatch(LikeActions.destroyLike(likeId)),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UserDashboard));