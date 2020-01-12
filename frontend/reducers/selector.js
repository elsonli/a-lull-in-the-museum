export const likesByUser = (likes, userId) => {
  const newLikes = [];
  Object.keys(likes).forEach(key => {
    if (likes[key].userId === userId) newLikes.push(likes[key]);
  });
  return newLikes;
};

export const commentsForArtwork = (comments, artworkId) => {
  const newComments = [];
  Object.keys(comments).forEach(key => {
    if (comments[key].artworkId === artworkId) newComments.push(comments[key]);
  });
  return newComments;
};