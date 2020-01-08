import React from "react";
import { Link } from "react-router-dom";

const ArtworkIndexItem = ({ artwork }) => {
  return (
    artwork.urls.map(url => {
      return (
        <li className={`artworks-fig-${ artwork.id } contain-zoom`} key={ artwork.id } >
          <Link to={`/artworks/${ artwork.id }`} target="_blank">
            <h6 className="artworks-title">{ artwork.title }</h6>
          </Link>
          <Link className="artworks-link" to={ `/artworks/${ artwork.id }` } target="_blank">
            <img className="artworks-img" src={ url } />
          </Link>
        </li>
      );
    })
  );
};

export default ArtworkIndexItem;