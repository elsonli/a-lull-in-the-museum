import React from "react";

const CommentIndexItem = props => {
  const { comment, currentUserId, destroyComment, openModal } = props;
  
  const deleteButton = (currentUserId === comment.user.id) ? (
    <strong className="delete-comment" onClick={ () => destroyComment(comment.id) }>
      <div className="fa">
        <i className="far fa-times-circle"></i>
      </div>
    </strong>
  ) : null;

  const editButton = (currentUserId === comment.user.id) ? (
    <strong className="edit-comment" onClick={ () => openModal({ type: "editComment", comment: comment }) }>
      <div className="fa">
        <i className="fas fa-edit"></i>
      </div>
    </strong>
  ) : null;
  
  return (
    <li className="comments-li">
      <h1>{ comment.user.username }</h1>
      <p>{ comment.body }</p>
      { deleteButton }
      { editButton }
    </li>
  );
};

export default CommentIndexItem;