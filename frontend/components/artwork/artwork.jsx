import React from "react";
import Like from "../like/like";
import { Redirect, Link } from "react-router-dom";
import CommentIndexContainer from "../comment/comment_index_container";

class Artwork extends React.Component {
  constructor(props) {
    super(props);
    this.state = { id: null }
  };

  componentDidMount() {
    this.props.fetchArtwork(this.props.match.params.id);
  };
  
  componentDidUpdate() {
    const artworkId = this.props.match.params.id;
    if (this.state.id !== artworkId) {
      this.props.fetchArtwork(artworkId);
      this.setState({ id: artworkId });
    };
  };

  render() {
    const {
      likes,
      artwork,
      openModal,
      fetchLikes,
      createLike,
      destroyLike,
      currentUserId
    } = this.props;

    // Ensure that the artworkId is valid, otherwise redirect to home page
    const artworkId = this.props.match.params.id;
    const regexMatchId = /^[0-9]*$/g;
    const matches = regexMatchId.exec(artworkId);
    if (!matches || matches < 1 || matches > 47) return <Redirect to="/" />;
    
    return (
      artwork ? (
        <div className="artwork-container">

          <div className="artwork-fav-nav">
            {/* Arrows to navigate to previous or next artwork's show page */}
            <div className="nav-arrows">
              <Link to={ `/artworks/${ parseInt(this.props.match.params.id) - 1 }` }>
                <img src="https://icons-for-free.com/iconfiles/png/512/arrow+left+chevron+chevronleft+left+left+icon+icon-1320185731545502691.png"/>
              </Link>
              <h1><strong>Works</strong>&nbsp;{ this.props.match.params.id }&nbsp;of&nbsp;47</h1>
              <Link to={ `/artworks/${ parseInt(this.props.match.params.id) + 1 }` }>
                <img src="https://icons-for-free.com/iconfiles/png/512/arrow+right+chevron+chevronright+right+right+icon+icon-1320185732203239715.png"/>
              </Link>
            </div>

            {/* Section for liking/unliking the artwork */}
            <Like
              likes={ likes }
              artwork={ artwork }
              fetchLikes={ fetchLikes }
              createLike={ createLike }
              destroyLike={ destroyLike }
              currentUserId={ currentUserId }
              openModal={ openModal } />
          </div>

          {/* Large artwork header at the top of the artwork's show page */}
          <h1 className="artwork-header">{ artwork.title }</h1>

          {/* Section of videos attached to the current artwork */}
          <ul className="artwork-videos">
            {
              artwork.videoUrls.map((url, idx) => {
                return (
                  <li key={ idx }>
                    <video controls>
                      <source src={ url } type="video/mp4"></source>
                    </video>
                  </li>
                );
              })
            }
          </ul>

          {/* Section of photos attached to the current artwork */}
          <ul className="artwork-photos">
            {
              artwork.photoUrls.map((url, idx) => {
                return (
                  <li key={ idx } onClick={ () => openModal({ type: "zoomImage", url: url }) }>
                    <img className="artwork-img" src={ url } />
                  </li>
                );
              })
            }
          </ul>

          {/* Section of the artwork's title and description */}
          <section className="artwork-section">
            <h1>{ artwork.title }</h1>
            <p>{ artwork.description }</p>
          </section>

          {/* Section of the artwork's comments */}
          <CommentIndexContainer artwork={ artwork } />
          
        </div>
      ) : null
    );
  };
};

export default Artwork;