import { connect } from "react-redux";
import ArtworkIndex from "./artwork_index";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as ArtworkActions from "../../actions/artwork_actions";

const mapStateToProps = state => {
  return {
    likes: state.entities.likes,
    artworks: Object.values(state.entities.artworks),
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    fetchArtworks: () => dispatch(ArtworkActions.fetchArtworks()),
    createLike: like => dispatch(LikeActions.createLike(like)),
    destroyLike: likeId => dispatch(LikeActions.destroyLike(likeId)),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ArtworkIndex);