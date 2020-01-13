import React from "react";
import VideoModalContainer from "./video_modal_container";
import EditCommentContainer from "./edit_comment_container";
import ArtworkModalContainer from "./artwork_modal_container";
import LoginFormContainer from "../session/login_form_container";
import SignupFormContainer from "../session/signup_form_container";
import DemoLoginFormContainer from "../session/demo_login_form_container";

const Modal = ({ modal, closeModal }) => {
  if (!modal) return null;
  let modalComponent;
  switch (modal.type) {
    case "login":
      modalComponent = <LoginFormContainer />;
      break;
    case "signup":
      modalComponent = <SignupFormContainer />;
      break;
    case "demologin":
      modalComponent = <DemoLoginFormContainer />;
      break;
    case "zoomImage":
      modalComponent = <ArtworkModalContainer />;
      break;
    case "zoomVideo":
      modalComponent = <VideoModalContainer />;
      break;
    case "editComment":
      modalComponent = <EditCommentContainer />;
      break;
    default:
      return null;
  };
  return (
    <div className="session-modal-background" onClick={ closeModal }>
      <div className="session-modal-child" onClick={ event => event.stopPropagation() }>
        { modalComponent }
      </div>
    </div>
  );
};

export default Modal;