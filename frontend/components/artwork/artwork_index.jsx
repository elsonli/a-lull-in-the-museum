import React from "react";
import ArtworkIndexItem from "./artwork_index_item";

class ArtworkIndex extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchArtworks();
  };

  render() {
    const fetched = this.props.artworks.length !== 0;
    return (
      fetched ? (
        <ul className="artworks-div">
          {
            this.props.artworks.map(artwork => {
              return (
                <ArtworkIndexItem key={ artwork.id } artwork={ artwork } />
              )
            })
          }
        </ul>
      ) : null
    )
  };
};

export default ArtworkIndex;