import { connect } from "react-redux";
import { withRouter } from "react-router";
import Artwork from "./artwork";
import * as ArtworkActions from "../../actions/artwork_actions";

const mapStateToProps = (state, ownProps) => {
  // console.log(state);
  // console.log(ownProps);
  return {
    artwork: state.entities.artworks[ownProps.match.params.id]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchArtwork: artworkId => dispatch(ArtworkActions.fetchArtwork(artworkId))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Artwork));