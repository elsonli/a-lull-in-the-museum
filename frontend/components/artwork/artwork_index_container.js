import { connect } from "react-redux";
import ArtworkIndex from "./artwork_index";
import * as LikeActions from "../../actions/like_actions";
import * as ModalActions from "../../actions/modal_actions";
import * as ArtworkActions from "../../actions/artwork_actions";
import * as Selectors from "../../reducers/selector";

const mapStateToProps = state => {
  return {
    likes: Selectors.likesByUser(
      Object.values(state.entities.likes),
      state.session.currentUserId
    ),
    artworks: Object.values(state.entities.artworks),
    currentUserId: state.session.currentUserId
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchLikes: () => dispatch(LikeActions.fetchLikes()),
    createLike: like => dispatch(LikeActions.createLike(like)),
    fetchArtworks: () => dispatch(ArtworkActions.fetchArtworks()),
    openModal: modal => dispatch(ModalActions.openModal(modal))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ArtworkIndex);