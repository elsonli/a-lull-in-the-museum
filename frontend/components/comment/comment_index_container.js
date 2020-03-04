import { connect } from "react-redux";
import { withRouter } from "react-router";
import CommentIndex from "./comment_index";
import * as ModalActions from "../../actions/modal_actions";
import * as CommentActions from "../../actions/comment_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    comments: Object.values(state.entities.comments),
    artwork: ownProps.artwork,
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchComments: () => dispatch(CommentActions.fetchComments()),
    destroyComment: commentId => dispatch(CommentActions.destroyComment(commentId)),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentIndex));
