import { connect } from "react-redux";
import { withRouter } from "react-router";
import CommentIndex from "./comment_index";
import * as CommentActions from "../../actions/comment_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    comments: Object.values(state.entities.comments),
    artwork: ownProps.artwork
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchComments: () => dispatch(CommentActions.fetchComments())
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentIndex));
