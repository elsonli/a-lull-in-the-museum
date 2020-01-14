import * as ModalActions from "../actions/modal_actions";

const _defaultState = {
  type: null,
  url: null
};

const modalReducer = (oldState = _defaultState, action) => {
  switch (action.type) {
    case ModalActions.OPEN_MODAL:
      return action.modal;
    case ModalActions.CLOSE_MODAL:
      return _defaultState;
    default:
      return oldState;
  };
};

export default modalReducer;