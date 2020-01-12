export const likesByUser = (likes, userId) => {
  const newLikes = [];
  Object.keys(likes).forEach(key => {
    if (likes[key].userId === userId) newLikes.push(likes[key]);
  });
  return newLikes;
};