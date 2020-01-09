import React from "react";
import { Link } from "react-router-dom";

class SessionForm extends React.Component {  
  constructor(props) {
    super(props);
    this.state = this.props.userState;
    // this.totalTimer = 0;
    // this.demoUser = this.demoUser.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  };

  componentDidMount() {
    if (this.props.formType === "Demo Log In") { this.props.processForm(); };
  };

  update(field) {
    return event => {
      this.setState({
        [field]: event.currentTarget.value
      });
    };
  };

  // demoUser() {
  //   const { username, password } = this.props.userState;
  //   const interval = 75;
  //   const timer = username.length * interval;
  //   this.totalTimer = timer + (password.length * interval);
  //   this.typeInfo("username", username, interval);
  //   setTimeout(this.typeInfo("password", password, interval), timer);
  // };

  // typeInfo(field, value, interval) {
  //   let i = 1;
  //   setInterval(() => {
  //     if (i < value.length) {
  //       this.setState({
  //         [field]: value.slice(0, i)
  //       })
  //     } else {
  //       clearInterval();
  //     };
  //   }, interval);
  // };

  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  };

  // handleSubmit(event) {
  //   event.preventDefault();
  //   const user = Object.assign({}, this.state);
  //   setTimeout(this.props.processForm(user), this.totalTimer);
  // };

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
        <button className="session-button">Demo Log In</button>
      </Link>
    ) : null;
    return (
      <div className="session-form-container">
        <form className="session-form" onSubmit={ this.handleSubmit }>
          <h1 className="session-form-header">{ this.props.formType }</h1>
          <div className="session-form-field">
            <label htmlFor="session-form-label">Username</label>
            <input
              type="text"
              id="session-form-username"
              value={ this.state.username }
              onChange={ this.update("username") }
              disabled={ this.props.formType === "Demo Log In" } />
          </div>
          <div className="session-form-field">
            <label htmlFor="session-form-label">Password</label>
            <input
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