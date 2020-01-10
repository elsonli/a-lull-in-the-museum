import * as ModalActions from "../actions/modal_actions";

const modalReducer = (oldState = null, action) => {
  switch (action.type) {
    case ModalActions.OPEN_MODAL:
      return action.modal;
    case ModalActions.CLOSE_MODAL:
      return null;
    default:
      return oldState;
  };
};

export default modalReducer;