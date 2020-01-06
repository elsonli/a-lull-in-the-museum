import React from "react";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.userState;
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
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  };

  renderErrors() {
    return (
      <ul>
        {
          this.props.errors.map((error, idx) => {
            return <li key={ `session-error-${idx}` }>{ error }</li>
          })
        }
      </ul>
    );
  };

  render() {
    return (
      <div className="session-form-container">
        <form onSubmit={ this.handleSubmit }>
          {/* Welcome to A Lull in the Museum! */}
          {/* <br/> */}
          {/* Please { this.props.formType } or { this.props.navLink } */}
          { this.renderErrors() }
          <div className="session-form-field">
            <label htmlFor="session-form-label">Username:</label>
            <input
              type="text"
              id="session-form-username"
              value={ this.state.username }
              onChange={ this.update("username") }/>
          </div>
          <div className="session-form-field">
            <label htmlFor="session-form-label">Password:</label>
            <input
              type="password"
              id="session-form-input"
              value={ this.state.password }
              onChange={ this.update("password") }/>
          </div>
          <input type="submit" value={ this.props.formType } />
        </form>
      </div>
    );
  };
};

export default SessionForm;