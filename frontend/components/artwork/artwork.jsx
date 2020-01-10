import React from "react";
import { Redirect, Link } from "react-router-dom";

class Artwork extends React.Component {
  constructor(props) {
    super(props);
    this.state = { id: null }
  };

  componentDidMount() {
    this.props.fetchArtwork(this.props.match.params.id);
  };
  
  componentDidUpdate() {
    if (this.state.id !== this.props.match.params.id) {
      this.props.fetchArtwork(this.props.match.params.id);
      this.setState({ id: this.props.match.params.id });
    };
  };

  render() {
    const { artwork } = this.props;

    const paramId = this.props.match.params.id;
    const regexMatchId = /^[0-9]*$/g
    const matches = regexMatchId.exec(paramId);
    if (!matches || matches < 1 || matches > 47) return <Redirect to="/" />

    return (
      artwork ? (
        <div className="artwork-container">
          <div className="nav-arrows">
            <Link to={ `/artworks/${ parseInt(this.props.match.params.id) - 1 }` }>
              <img src="https://icons-for-free.com/iconfiles/png/512/arrow+left+chevron+chevronleft+left+left+icon+icon-1320185731545502691.png"/>
            </Link>
            <h1><strong>WORKS</strong>&nbsp;{ this.props.match.params.id }&nbsp;of&nbsp;47</h1>
            <Link to={ `/artworks/${ parseInt(this.props.match.params.id) + 1 }` }>
              <img src="https://icons-for-free.com/iconfiles/png/512/arrow+right+chevron+chevronright+right+right+icon+icon-1320185732203239715.png"/>
            </Link>
          </div>
          <h1 className="artwork-header">{ artwork.title }</h1>
          <ul className="artwork-videos">
            { console.log(url_for(artwork.photos)) }
            {
              artwork.videoUrls.map((url, idx) => {
                return (
                  <li key={ idx }>
                    <video width="768" height="576" controls>
                      <source src={ url } type="video/mp4"></source>
                      { console.log() }
                    </video>
                  </li>
                )
              })
            }
          </ul>
          <ul className="artwork-photos">
            {
              artwork.photoUrls.map((url, idx) => {
                return (
                  <li key={ idx }>
                    <img className="artwork-img" src={ url } />
                  </li>
                );
              })
            }
          </ul>
          <section className="artwork-section">
            <h1>{ artwork.title }</h1>
            <p>{ artwork.description }</p>
          </section>
        </div>
      ) : null
    );
  };
};

export default Artwork;