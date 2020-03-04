import Modal from "./modal";
import { connect } from "react-redux";
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

export default connect(mapStateToProps, mapDispatchToProps)(Modal);