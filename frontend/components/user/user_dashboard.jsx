import React from "react";
import { Link, Redirect } from "react-router-dom";
import * as Selectors from "../../reducers/selector";
import ArtworkDashItem from "../artwork/artwork_dash_item";

class UserDashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentId: this.props.match.params.id,
      numLikes: Selectors.likesByUser(this.props.likes, this.props.match.params.id).length
    };
  };

  componentDidMount() {
    this.props.fetchLikes();
    this.props.fetchUser(this.props.match.params.id)
  };

  componentDidUpdate() {
    let allLikes = this.props.likes;
    let currentUserId = this.props.user.id;
    let currentUserLikes = Selectors.likesByUser(allLikes, currentUserId);
    if (this.state.numLikes !== currentUserLikes.length) {
      this.props.fetchUser(this.props.match.params.id);
      this.setState({
        currentId: this.props.match.params.id,
        numLikes: currentUserLikes.length
      });
    };
  };

  render() {
    const {
      user,
      openModal,
      sessionUserId,
      likes,
      destroyLike
    } = this.props;

    const userId = this.props.match.params.id;
    const regexMatchId = /^[0-9]*$/g
    const matches = regexMatchId.exec(userId);
    if (!matches) return <Redirect to="/" />;

    return (
      user ? (
        user.id === sessionUserId ? (
          (user.likedArtworks && user.likedArtworks.length !== 0) ? (
            <ul className="artworks-dash">
              {
                user.likedArtworks.map(artwork => {
                  return (
                    <ArtworkDashItem
                      likes={ likes }
                      key={ artwork.id }
                      artwork={ artwork }
                      openModal={ openModal }
                      destroyLike={ destroyLike }
                      currentUserId={ user.id } />
                  );
                })
              }
            </ul>
          ) : (
            <div className="no-like-dash">
              <strong>No Liked Artworks!</strong>
              <Link to="/">
                <button className="session-button">
                  Return to Gallery
                </button>
              </Link>
            </div>
          )
        ) : <Redirect to="/" />
      ) : null
    );
  };
};

export default UserDashboard;