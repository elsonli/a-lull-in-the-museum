import React from "react";
import { Link } from "react-router-dom";
import * as Selectors from "../../reducers/selector";

const ArtworkIndexItem = props => {
  const { artwork, openModal, likes, createLike, destroyLike, currentUserId } = props;

  // Retrieves the preview video if there is one
  const firstVidUrl = artwork.videoUrls.length > 0 ? artwork.videoUrls[0] : null;

  // Only show the play button on the preview if a video exists
  const firstVidPlay = firstVidUrl ? (
    <img className="play" src="https://www.freepnglogos.com/uploads/play-button-png/index-media-cover-art-play-button-overlay-5.png" onClick={() => openModal({ type: "zoomVideo", url: firstVidUrl })} />
  ) : null;

  // Constructs a new like to be created, can be moved inline
  const newLike = {
    user_id: currentUserId,
    artwork_id: artwork.id
  };

  // Selects all of the likes by the current user
  const selectedLikes = Selectors.likesByUser(likes, currentUserId);

  // Contains all of the artwork IDs liked by the current user
  const selectedLikesSet = new Set(selectedLikes.map(like => like.artworkId));

  // Retrieves the specific like of the artwork by the current user
  const likeObj = selectedLikes.filter(like => like.artworkId === artwork.id)[0];

  // Shows a clickable icon based on whether the artwork has been liked already
  const liked = currentUserId ? (
    selectedLikesSet.has(artwork.id) ? (
      <div className="fa">
        <i className="fas fa-star" onClick={ () => destroyLike(likeObj.id) }></i>
      </div>
    ) : (
      <div className="fa">
        <i className="far fa-star" onClick={ () => createLike(newLike) }></i>
      </div>
    )
  ) : null;

  return (
    // Previews contain a title and its first image that opens a new tab on click
    <li className={ `artworks-fig-${ artwork.id } contain-zoom` } key={ artwork.id } >
      { liked }
      <Link to={ `/artworks/${ artwork.id }` } target="_blank">
        <h6 className="artworks-title">{ artwork.title }</h6>
      </Link>
      <Link className="artworks-link" to={ `/artworks/${ artwork.id }` } target="_blank">
        <img className="artworks-img" src={ artwork.photoUrls[0] } />
      </Link>
      { firstVidPlay }
    </li>
  );

};

export default ArtworkIndexItem;