import React from "react";
import { Redirect } from "react-router-dom";
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
      this.setState({ currentId: this.props.match.params.id });
    };
  };

  render() {
    const { user, openModal, sessionUserId } = this.props;
    return (
      (user && user.likedArtworks) ? (
        user.id === sessionUserId ? (
          <ul className="artworks-dash">
            {
              this.props.user.likedArtworks.map(artwork => {
                return (
                  <ArtworkDashItem
                    key={artwork.id}
                    artwork={artwork}
                    openModal={openModal}
                    currentUserId={user.id} />
                )
              })
            }
          </ul>
        ) : <Redirect to="/" />
      ) : null
    );
  };
};

export default UserDashboard;