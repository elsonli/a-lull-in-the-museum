import { connect } from "react-redux";
import ArtworkModal from "./artwork_modal";
import { withRouter } from "react-router-dom";
import * as ModalActions from "../../actions/modal_actions";

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(ModalActions.closeModal())
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ArtworkModal));