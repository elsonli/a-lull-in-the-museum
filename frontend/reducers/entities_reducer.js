import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import likesReducer from "./likes_reducer";
import artworksReducer from "./artworks_reducer";
import commentsReducer from "./comments_reducer";

const entitiesReducer = combineReducers({
  users: usersReducer,
  likes: likesReducer,
  artworks: artworksReducer,
  comments: commentsReducer
});

export default entitiesReducer;