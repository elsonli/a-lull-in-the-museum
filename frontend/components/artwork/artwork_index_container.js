import { connect } from "react-redux";
import ArtworkIndex from "./artwork_index";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as ArtworkActions from "../../actions/artwork_actions";

const mapStateToProps = state => {
  return {
    // likes: Object.values(state.entities.likes),
    artworks: Object.values(state.entities.artworks)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    fetchArtworks: () => dispatch(ArtworkActions.fetchArtworks()),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ArtworkIndex);