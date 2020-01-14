import React from "react";
import { Link, Redirect } from "react-router-dom";
import ArtworkDashItem from "../artwork/artwork_dash_item";

class UserDashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentId: this.props.match.params.id
    };
  };

  componentDidMount() {
    this.props.fetchLikes();
    this.props.fetchUser(this.props.match.params.id)
  };

  componentDidUpdate() {
    if (this.state.currentId !== this.props.match.params.id) {
      this.props.fetchUser(this.props.match.params.id);
      this.setState({
        currentId: this.props.match.params.id
      });
    };
  };

  render() {
    const { user, openModal, sessionUserId } = this.props;

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
                      key={ artwork.id }
                      artwork={ artwork }
                      openModal={ openModal }
                      currentUserId={ user.id } />
                  );
                })
              }
            </ul>
          ) : (
            <div className="no-like-dash">
              <strong>No Liked Artworks!</strong>
              <Link to="/">
                <button>Return to Gallery</button>
              </Link>
            </div>
          )
        ) : <Redirect to="/" />
      ) : null
    );
  };
};

export default UserDashboard;