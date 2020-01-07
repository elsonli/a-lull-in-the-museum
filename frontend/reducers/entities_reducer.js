import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import artworksReducer from "./artworks_reducer";

const entitiesReducer = combineReducers({
  users: usersReducer,
  artworks: artworksReducer
});

export default entitiesReducer;