import React from "react";

class CommentForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.commentState
    this.handleSubmit = this.handleSubmit.bind(this);
  };

  update(field) {
    return event => {
      this.setState({
        [field]: event.currentTarget.value
      });
    };
  };

  handleSubmit(event) {
    event.preventDefault();
    this.props.createComment({
      user_id: this.props.currentUserId,
      artwork_id: this.props.artwork.id,
      body: this.state.body
    }).then(this.setState({ body: "" }));
  };

  // renderErrors() {
  //   return (
  //     <ul>

  //     </ul>
  //   );
  // };

  render() {
    return (
      <div className="comment-form-container">
        <form className="comment-form" onSubmit={ this.handleSubmit }>
          <textarea
            rows="4"
            placeholder="Add a new comment..."
            value={ this.state.body }
            onChange={ this.update("body") }>
          </textarea>
          <br/>
          <input type="submit" value="Add Boppin Comment"/>
        </form>
      </div>
    );
  };
};

export default CommentForm;