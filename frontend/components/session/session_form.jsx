import React from "react";

class SessionForm extends React.Component {  
  constructor(props) {
    super(props);
    this.state = this.props.userState;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.props.clearSessionErrors();
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
    const { formType, formText, otherForm, closeModal, openModal } = this.props;

    const demoButton = (formType !== "DEMO LOG IN") ? (
      <button
        type="button"
        className="session-button"
        onClick={ () => openModal({ type: "demologin" }) }>
          DEMO LOG IN
      </button>
    ) : null;

    return (
      <div className="session-form-container">
        <form className="session-form" onSubmit={ this.handleSubmit }>
          <div onClick={ closeModal } className="close-modal">X</div>
          <h1>{ formType }</h1>
          <br/>
          <p>{ formText }<strong>{ otherForm }</strong></p>
          <div className="session-form-fields">
            <input
              type="text"
              placeholder="Username"
              value={ this.state.username }
              onChange={ this.update("username") }
              disabled={ formType === "DEMO LOG IN" } />
            <input
              type="password"
              placeholder="Password"
              value={ this.state.password }
              onChange={ this.update("password") }
              disabled={ formType === "DEMO LOG IN" } />
          </div>
          <div className="session-buttons">
            <input
              type="submit"
              value={ formType }
              className="session-button" />
            { demoButton }
          </div>
        </form>
        { this.renderErrors() }
      </div>
    );
  };
};

export default SessionForm;