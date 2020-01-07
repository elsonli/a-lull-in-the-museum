import { connect } from "react-redux";
import ArtworkIndex from "./artwork_index";
import * as ArtworkActions from "../../actions/artwork_actions";

const mapStateToProps = state => {
  return {
    artworks: Object.values(state.entities.artworks)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchArtworks: () => dispatch(ArtworkActions.fetchArtworks())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ArtworkIndex);