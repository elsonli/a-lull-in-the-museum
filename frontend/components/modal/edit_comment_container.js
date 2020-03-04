import { connect } from "react-redux";
import EditComment from "./edit_comment";
import { withRouter } from "react-router-dom";
import * as ModalActions from "../../actions/modal_actions";
import * as CommentActions from "../../actions/comment_actions";

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    patchComment: comment => dispatch(CommentActions.patchComment(comment)),
    closeModal: () => dispatch(ModalActions.closeModal())
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(EditComment));