import thunk from "redux-thunk";
import logger from "redux-logger";
import rootReducer from "../reducers/root_reducer";
import { createStore, applyMiddleware } from "redux";

const configureStore = (preloadedState = {}) => {
  let middlewares = [thunk];
  if (process.env.NODE_ENV === "development") {
    middlewares = [...middlewares, logger];
  };
  return createStore(
    rootReducer,
    preloadedState,
    applyMiddleware(...middlewares)
  );
};

export default configureStore;