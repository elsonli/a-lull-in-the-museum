import React from "react";

class ArtworkModal extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    document.getElementsByClassName("session-modal-child")[0].classList.add("artwork-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.add("artwork-modal-background");
    document.getElementsByClassName("session-modal-child")[0].classList.remove("session-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.remove("session-modal-background");
  };

  render() {
    const { modal } = this.props;
    return (
      <img className="artwork-modal-img" src={ modal.url } />
    );
  };
};

export default ArtworkModal;