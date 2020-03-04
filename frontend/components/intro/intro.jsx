import React from "react";

const Intro = ({ header, description }) => {
  return (
    <div className="intro">
      <h1>{ header }</h1>
      <article>{ description }</article>     
    </div>
  );
};

export default Intro;