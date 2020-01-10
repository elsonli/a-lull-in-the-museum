import * as ModalActions from "../actions/modal_actions";

const _defaultModal = {
  type: null,
  photoId: null
};

const modalReducer = (oldState = _defaultModal, action) => {
  switch (action.type) {
    case ModalActions.OPEN_MODAL:
      return action.modal;
    case ModalActions.CLOSE_MODAL:
      return _defaultModal;
    default:
      return oldState;
  };
};

export default modalReducer;