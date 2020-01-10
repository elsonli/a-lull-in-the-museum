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
    return (
      <div>
        {/* <div onClick={ this.props.closeModal } className="close-modal">X</div> */}
        <img className="artwork-modal-child" src={ this.props.modal.url } />
      </div>
    );
  };
};

export default ArtworkModal;