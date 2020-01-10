import React from "react";
import { Link } from "react-router-dom";

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
    this.props.processForm(user).then(this.props.closeModal);
  };

  renderErrors() {
    return (
      <ul className="session-errors">
        {
          this.props.errors.map((error, idx) => {
            return <li key={ `session-error-${ idx }` }>{ error }</li>
          })
        }
      </ul>
    );
  };

  render() {
    const demoButton = this.props.formType !== "Demo Log In" ? (
      <Link to="/demologin">
        <button className="session-button">DEMO LOG IN</button>
      </Link>
    ) : null;
    return (
      <div className="session-form-container">
        <form className="session-form" onSubmit={ this.handleSubmit }>
          <h1>{ this.props.formType }</h1>
          <br />
          <p>Become a wanderer.<strong>{ this.props.otherForm }</strong></p>
          
          <div className="session-form-fields">
            <input
              placeholder="Username"
              type="text"
              id="session-form-username"
              value={ this.state.username }
              onChange={ this.update("username") }
              disabled={ this.props.formType === "Demo Log In" } />
            <input
              placeholder="Password"
              type="password"
              id="session-form-input"
              value={ this.state.password }
              onChange={ this.update("password") }
              disabled={this.props.formType === "Demo Log In"} />
          </div>

          <div className="session-buttons">
            <input className="session-button" type="submit" value={ this.props.formType } />
            { demoButton }
          </div>

        </form>
        { this.renderErrors() }
      </div>
    );
  };
};

export default SessionForm;