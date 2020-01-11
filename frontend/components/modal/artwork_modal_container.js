import { connect } from "react-redux";
import ArtworkModal from "./artwork_modal";
import { withRouter } from "react-router-dom";

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

export default withRouter(connect(mapStateToProps)(ArtworkModal));