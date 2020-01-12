export const fetchLikes = () => {
  return $.ajax({
    method: "GET",
    url: "/api/likes"
  });
};

// export const createLike = like => {
//   return $.ajax({
//     method: "POST",
//     url: `/api/artworks/${like.artwork_id}/likes`,
//     data: { like }
//   });
// };

// export const destroyLike = likeId => {
//   return $.ajax({
//     method: "DELETE",
//     url: `/api/likes/${likeId}`
//   });
// };