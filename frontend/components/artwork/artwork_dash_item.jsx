import React from "react";
import { Link } from "react-router-dom";

const ArtworkIndexItem = props => {
  const { artwork, openModal } = props;

  // Retrieves the preview video if there is one
  const firstVidUrl = artwork.videoUrls.length > 0 ? artwork.videoUrls[0] : null;

  // Only show the play button on the preview if a video exists
  const firstVidPlay = firstVidUrl ? (
    <img className="play" src="https://www.freepnglogos.com/uploads/play-button-png/index-media-cover-art-play-button-overlay-5.png" onClick={() => openModal({ type: "zoomVideo", url: firstVidUrl })} />
  ) : null;

  return (
    // Previews contain a title and its first image that opens a new tab on click
    <li className={`artworks-dash-${artwork.id} contain-zoom-dash dash-item`} key={artwork.id} >
      <Link to={`/artworks/${artwork.id}`} target="_blank">
        <h6 className="artworks-title">{artwork.title}</h6>
      </Link>
      <Link className="artworks-link" to={`/artworks/${artwork.id}`} target="_blank">
        <img className="artworks-img" src={artwork.photoUrls[0]} />
      </Link>
      {firstVidPlay}
    </li>
  );

};

export default ArtworkIndexItem;