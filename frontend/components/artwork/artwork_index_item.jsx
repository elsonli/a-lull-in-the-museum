import React from "react";
import { Link } from "react-router-dom";

const ArtworkIndexItem = ({ artwork, openModal }) => {
  const firstVidUrl = artwork.videoUrls.length > 0 ? artwork.videoUrls[0] : null;
  return (

    // Previews contain a title and its first image that opens a new tab on click
    <li className={ `artworks-fig-${ artwork.id } contain-zoom` } key={ artwork.id } >
      <Link to={ `/artworks/${ artwork.id }` } target="_blank">
        <h6 className="artworks-title">{ artwork.title }</h6>
      </Link>
      <Link className="artworks-link" to={ `/artworks/${ artwork.id }` } target="_blank">
        <img className="artworks-img" src={ artwork.photoUrls[0] } />
      </Link>
      <img className="play" src="https://www.freepnglogos.com/uploads/play-button-png/index-media-cover-art-play-button-overlay-5.png" onClick={ () => openModal({ type: "zoomVideo", url: firstVidUrl }) }/>
    </li>
  );
};

export default ArtworkIndexItem;