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
        <form className="session-form" onSubmit={ this.handleSubmit }>
          <h1 className="session-form-header">{ this.props.formType }</h1>
          { this.renderErrors() }
          <div className="session-form-field">
            <label htmlFor="session-form-label">Username:&nbsp;</label>
            <input
              type="text"
              id="session-form-username"
              value={ this.state.username }
              onChange={ this.update("username") }/>
          </div>
          <div className="session-form-field">
            <label htmlFor="session-form-label">Password:&nbsp;</label>
            <input
              type="password"
              id="session-form-input"
              value={ this.state.password }
              onChange={ this.update("password") }/>
          </div>
          <input className="session-button" type="submit" value={ this.props.formType } />
        </form>
      </div>
    );
  };
};

export default SessionForm;