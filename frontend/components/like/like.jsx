import React from "react";
import LikeActions from "../../actions/like_actions";
import * as Selectors from "../../reducers/selector";

class Like extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    // console.log("mounting")
    this.props.fetchLikes();
  };

  render() {
    // const { likes, currentUserId, createLike, destroyLike } = this.props;
    const { artwork, currentUserId, likes } = this.props;

    // Selects all of the likes by the current user
    const selectedLikes = Selectors.likesByUser(likes, currentUserId);

    // Contains all of the artwork IDs liked by the current user
    const selectedLikesSet = new Set(selectedLikes.map(like => like.artworkId));

    return (
      (currentUserId && likes) ? (
        selectedLikesSet.has(artwork.id) ? (
          <h1 className="artworks-like">
            <div className="fa">
              <i className="fas fa-star" onClick={ () => destroyLike(likeObj.id) }></i>
              <strong>IN FAVORITES</strong>
            </div>
          </h1>
        ) : (
          <h1 className="artworks-like">
            <div className="fa">
              <i className="far fa-star" onClick={() => destroyLike(likeObj.id)}></i>
              <strong>ADD TO FAVORITES</strong>
            </div>
          </h1>
        )
      ) : null
    )
  };
};

export default Like;