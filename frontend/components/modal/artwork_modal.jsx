import React from "react";

class ArtworkModal extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    document.getElementsByClassName("session-modal-child")[0].classList.add("artwork-modal-child");
    document.getElementsByClassName("session-modal-child")[0].classList.remove("session-modal-child");
  };

  render() {
    console.log(this.props.modal.photoId);
    return (
      <div>
        <div onClick={ this.props.closeModal } className="close-modal">X</div>
        <img src={ this.props.modal.photoId } />
      </div>
    );
  };
};

export default ArtworkModal;