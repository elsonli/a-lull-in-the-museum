import React from "react";

class EditComment extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.modal.comment;
    this.handleSubmit = this.handleSubmit.bind(this);
  };

  componentDidMount() {
    document.getElementsByClassName("session-modal-child")[0].classList.add("comment-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.add("comment-modal-background");
    document.getElementsByClassName("session-modal-child")[0].classList.remove("session-modal-child");
    document.getElementsByClassName("session-modal-background")[0].classList.remove("session-modal-background");
  };
  
  update(field) {
    return event => {
      this.setState({
        [field]: event.target.value
      });
    };
  };

  handleSubmit(event) {
    event.preventDefault();
    this.props.patchComment(this.state)
      .then(this.props.closeModal());
  };

  render() {
    return (
      <form className="edit-comment-form" onSubmit={ this.handleSubmit }>
        <textarea
          cols="30"
          rows="5"
          value={ this.state.body }
          onChange={ this.update("body") }>
        </textarea>
        <input type="submit" value="Edit Boppin Comment"/>
      </form>
    );
  };
};

export default EditComment;