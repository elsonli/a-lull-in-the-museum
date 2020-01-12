import Like from "./like";
import { connect } from "react-redux";
import { withRouter } from "react-router";
import * as LikeActions from "../../actions/like_actions";

const mapStateToProps = (state, ownProps) => {
  console.log(state);
  return {
    likes: Object.values(state.entities.likes),
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  // console.log(ownProps);
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes(ownProps.match.params.id)),
    createLike: like => dispatch(LikeActions.createLike(like)),
    // destroyLike: userId => dispatch(LikeActions.destroyLike({
    //   user_id: userId,
    //   artwork_id: ownProps.match.params.id
    // }))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Like));