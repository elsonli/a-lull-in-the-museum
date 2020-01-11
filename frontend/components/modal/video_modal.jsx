import React from "react";

class VideoModal extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    document.getElementsByClassName("session-modal-child")[0].classList.add("video-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.add("video-modal-background");
    document.getElementsByClassName("session-modal-child")[0].classList.remove("session-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.remove("session-modal-background");
  };

  render() {
    return (
      <div>
        <img className="video-modal-child" src={ this.props.modal.url } />
      </div>
    )
  };
};

export default VideoModal;