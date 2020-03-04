import { connect } from "react-redux";
import VideoModal from "./video_modal";

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

export default connect(mapStateToProps)(VideoModal);