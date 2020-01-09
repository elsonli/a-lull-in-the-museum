import React from "react";

const Intro = props => {
  return (
    <div className="intro">
      <h1>{ props.header }</h1>
      <article>{ props.description }</article>     
    </div>
  );
};

export default Intro;