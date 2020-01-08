import React from "react";
import { Link } from "react-router-dom";

const ArtworkIndexItem = ({ artwork }) => {
  // const style = {
  //   background: `linear-gradient(to bottom, rgba(0,0,0,0) 20%, rgba(0,0,0,1))`,
  //   url: `${url}`
  // }
  return (
    artwork.urls.map(url => {
      return (
        <li className={`artworks-fig-${ artwork.id } contain-zoom`} key={ artwork.id } >
          <Link to={ `/artworks/${artwork.id }` }>
            <h6 className="artworks-title">{ artwork.title }</h6>
          </Link>
          <Link className="artworks-link" to={ `/artworks/${ artwork.id }` }>
            <img className="artworks-img" src={ url } />
          </Link>
        </li>
      );
    })
  );
};

export default ArtworkIndexItem;