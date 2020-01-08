import React from "react";

class Artwork extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchArtwork(this.props.match.params.id);
  };

  render() {
    return (
      this.props.artwork ? <h1>{ this.props.artwork.title }</h1> : null
    );
  };
};

export default Artwork;