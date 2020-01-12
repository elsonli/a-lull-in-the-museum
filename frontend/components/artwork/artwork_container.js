import { connect } from "react-redux";
import { withRouter } from "react-router";
import Artwork from "./artwork";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as ArtworkActions from "../../actions/artwork_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    likes: state.entities.likes,
    artwork: state.entities.artworks[ownProps.match.params.id],
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    fetchArtwork: artworkId => dispatch(ArtworkActions.fetchArtwork(artworkId)),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Artwork));