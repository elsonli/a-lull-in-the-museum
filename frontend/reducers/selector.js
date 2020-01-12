export const likesByUser = (likesArray, userId) => {
  const newLikes = new Set();
  likesArray.forEach(like => {
    if (like.userId === userId) newLikes.add(like.artworkId);
  });
  return newLikes;
};