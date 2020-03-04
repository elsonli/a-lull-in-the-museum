export const fetchComments = () => {
  return $.ajax({
    method: "GET",
    url: "/api/comments"
  });
};

export const fetchComment = commentId => {
  return $.ajax({
    method: "GET",
    url: `/api/comments/${ commentId }`
  });
};

export const createComment = comment => {
  return $.ajax({
    method: "POST",
    url: `/api/artworks/${ comment.artwork_id }/comments`,
    data: { comment }
  });
};

export const destroyComment = commentId => {
  return $.ajax({
    method: "DELETE",
    url: `api/comments/${ commentId }`
  });
};

export const patchComment = comment => {
  return $.ajax({
    method: "PATCH",
    url: `api/comments/${ comment.id }`,
    data: { comment }
  });
};