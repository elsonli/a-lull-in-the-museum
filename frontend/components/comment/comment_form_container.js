import { connect } from "react-redux";
import CommentForm from "./comment_form";
import { withRouter } from "react-router";
import * as CommentActions from "../../actions/comment_actions";

const mapStateToProps = (state, ownProps) => {
  console.log(ownProps);
  return {
    commentState: {
      body: ""
    },
    artwork: ownProps.artwork,
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = dispatch => {
  return {
    createComment: comment => dispatch(CommentActions.createComment(comment))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentForm));