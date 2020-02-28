import React from "react";
import * as Selectors from "../../reducers/selector";

class Like extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchLikes();
  };

  render() {
    const {
      artwork,
      currentUserId,
      likes,
      createLike,
      destroyLike,
      openModal
    } = this.props;

    // Selects all of the likes by the current user
    const selectedLikes = Selectors.likesByUser(likes, currentUserId);

    // Contains all of the artwork IDs liked by the current user
    const selectedLikesSet = new Set(selectedLikes.map(like => like.artworkId));

    // Retrieves the specific like of the artwork by the current user
    const likeObj = selectedLikes.filter(like => like.artworkId === artwork.id)[0];

    // Constructs a new like to be created, can be moved inline
    const newLike = {
      user_id: currentUserId,
      artwork_id: artwork.id
    };

    return (
      (currentUserId && likes) ? (
        selectedLikesSet.has(artwork.id) ? (
          <h1 className="artworks-like">
            <div className="fa" onClick={ () => destroyLike(likeObj.id) }>
              <i className="fas fa-star"></i>
              <strong>IN FAVORITES</strong>
            </div>
            <input
              type="button"
              className="session-button"
              value="ADD COMMENT"
              onClick={ () => document.getElementById("comments-container-id").scrollIntoView() } />
          </h1>
        ) : (
          <h1 className="artworks-like">
            <div className="fa" onClick={ () => createLike(newLike) }>
              <i className="far fa-star"></i>
              <strong>ADD TO FAVORITES</strong>
            </div>
            <input
              type="button"
              className="session-button"
              value="ADD COMMENT"
              onClick={ () => document.getElementById("comments-container-id").scrollIntoView() } />
          </h1>
        )
      ) : (
        <div className="artworks-like">
          <button className="session-button" onClick={ () => openModal({ type: "signup" }) }>
            ADD COMMENT
          </button>
        </div>
      )
    )
  };
};

export default Like;