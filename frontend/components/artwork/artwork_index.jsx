import React from "react";
import ArtworkIndexItem from "./artwork_index_item";
import ModalContainer from "../modal/modal_container";

class ArtworkIndex extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchLikes();
    this.props.fetchArtworks();
  };

  render() {
    const fetched = this.props.artworks.length !== 0;
    return (
      fetched ? (
        // ArtworkIndexItems renders previews of artworks
        <ul className="artworks-div">
          <ModalContainer />
          {
            this.props.artworks.map(artwork => {
              return (
                <ArtworkIndexItem
                  key={ artwork.id }
                  artwork={ artwork }
                  likes={ this.props.likes }
                  openModal={ this.props.openModal }
                  createLike={ this.props.createLike }
                  currentUserId={ this.props.currentUserId } />
              )
            })
          }
        </ul>
      ) : null
    )
  };
};

export default ArtworkIndex;