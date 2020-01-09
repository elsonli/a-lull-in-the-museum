import React from "react";
import { Redirect } from "react-router-dom";

class Artwork extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    // const paramId = this.props.match.params.id;
    this.props.fetchArtwork(this.props.match.params.id)
      // () => {
        // const regex = /^[0-9]*$/g
        // const match = regex.exec(paramId);
        // console.log("here")
        // if (!match || match < 1 || match > 47) return <Redirect to="/" />
        // console.log("there")
      // }
    // );
  };

  componentDidUpdate() {
    this.props.fetchArtwork(this.props.match.params.id)

  }

  render() {
    const { artwork } = this.props;

    const paramId = this.props.match.params.id;
    const regexMatchId = /^[0-9]*$/g
    const matches = regexMatchId.exec(paramId);
    if (!matches || matches < 1 || matches > 47) return <Redirect to="/" />

    return (
      artwork ? (
        <div className="artwork-container">
          <h1 className="artwork-header">{ artwork.title }</h1>
          <ul className="artwork-photos">
            {
              artwork.urls.map((url, idx) => {
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