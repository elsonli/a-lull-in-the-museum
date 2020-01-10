import React from "react";
import LoginFormContainer from "../session/login_form_container";
import SignupFormContainer from "../session/signup_form_container";
import DemoLoginFormContainer from "../session/demo_login_form_container";

const Modal = ({ modal, closeModal }) => {
  if (!modal) return null;
  let modalComponent;
  switch (modal) {
    case "login":
      modalComponent = <LoginFormContainer />;
      break;
    case "signup":
      modalComponent = <SignupFormContainer />;
      break;
    case "demologin":
      modalComponent = <DemoLoginFormContainer />;
      break;
    default:
      return null;
  };
  return (
    <div className="modal-background" onClick={ closeModal }>
      <div className="modal-child" onClick={ event => event.stopPropagation() }>
        { modalComponent }
      </div>
    </div>
  );
};

export default Modal;