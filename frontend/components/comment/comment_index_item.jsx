import React from "react";

const CommentIndexItem = props => {
  const { comment, currentUserId, destroyComment } = props;
  
  const belongsToUser = (currentUserId === comment.user.id) ? (
    <strong className="delete-comment" onClick={ () => destroyComment(comment.id) }>X</strong>
  ) : null;

  return (
    <li className="comments-li">
      <h1>{ comment.user.username }</h1>
      <p>{ comment.body }</p>
      { belongsToUser }
    </li>
  );
};

export default CommentIndexItem;