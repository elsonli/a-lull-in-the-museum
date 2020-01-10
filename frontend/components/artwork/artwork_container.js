import { connect } from "react-redux";
import { withRouter } from "react-router";
import Artwork from "./artwork";
import * as ArtworkActions from "../../actions/artwork_actions";
import * as ModalActions from "../../actions/modal_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    artwork: state.entities.artworks[ownProps.match.params.id]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchArtwork: artworkId => dispatch(ArtworkActions.fetchArtwork(artworkId)),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Artwork));