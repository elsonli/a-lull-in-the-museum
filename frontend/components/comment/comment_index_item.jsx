import React from "react";

const CommentIndexItem = props => {
  const { comment } = props;
  return (
    <li className="comments-li">
      <h1>{ comment.user.username }</h1>
      <p>{ comment.body }</p>
    </li>
  );
};

export default CommentIndexItem;