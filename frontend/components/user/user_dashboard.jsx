import React from "react";
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
    const { user, likes, openModal, createLike, destroyLike } = this.props;
    return (
      (user && user.likedArtworks) ? (
        <ul className="artworks-dash">
          {
            this.props.user.likedArtworks.map(artwork => {
              return (
                <ArtworkDashItem
                  key={ artwork.id }
                  artwork={ artwork }
                  likes={ likes }
                  openModal={ openModal }
                  createLike={ createLike }
                  destroyLike={ destroyLike }
                  currentUserId={ user.id } />
              )
            })
          }
        </ul>
      ) : null
    );
  };
};

export default UserDashboard;