export const fetchComments = () => {
  return $.ajax({
    method: "GET",
    url: "/api/comments"
  });
};

export const createComment = comment => {
  return $.ajax({
    method: "POST",
    url: `/api/artworks/${comment.artwork_id}/comments`,
    data: { comment }
  });
};