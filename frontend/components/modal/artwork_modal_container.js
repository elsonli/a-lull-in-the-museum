import { connect } from "react-redux";
import ArtworkModal from "./artwork_modal";

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

export default connect(mapStateToProps)(ArtworkModal);