import React from "react";
import "regenerator-runtime/runtime";

class SessionForm extends React.Component {  

  constructor(props) {
    super(props);
    this.state = this.props.userState;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.props.clearSessionErrors();
  };

  componentDidMount() {
    if (this.props.formType === "DEMO LOG IN") {
      let ghostTypeUser = str => {
        if (!str.length) return setTimeout(ghostTypePass("DemoLogin"), 1200);
        let currLetter = str[0];
        this.updateWithLetter("username")(currLetter);
        setTimeout(() => ghostTypeUser(str.slice(1)), 100);
      }

      let ghostTypePass = str => {
        if (!str.length) {
          let submitInput = document.getElementsByClassName("submit-session-form")[0];
          submitInput.click();
          return;
        }
        let currLetter = str[0];
        this.updateWithLetter("password")(currLetter);
        setTimeout(() => ghostTypePass(str.slice(1)), 100);
      }

      ghostTypeUser("TestUser");
    }
  }

  // 1. Returns a function that updates the state for this React Component
  update(field) {
    return event => {
      this.setState({
        [field]: event.currentTarget.value
      });
    };
  };

  updateWithLetter(field) {
    return letter => {
      this.setState({
        [field]: this.state[field] + letter
      });
    }
  }

  // 1. Process the form with the correct action and then close the modal
  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.props.closeModal);
  };

  // 1. Returns a JSX element that contains all of the errors available in
  //    the store in an unordered list
  renderErrors() {
    return (
      <ul className="session-errors">
        {
          this.props.errors.map((error, idx) => {
            return (
              <li key={ `session-error-${ idx }` }>
                { error }
              </li>
            );
          })
        }
      </ul>
    );
  };

  render() {
    const {
      formType,
      formText,
      otherForm,
      closeModal,
      openModal
    } = this.props;

    // 1. Conditionally renders a JSX element that contains a demo login button
    // 2. The session button opens up the corresponding modal by dispatching
    //    an asynchronous thunk action creator to the store
    const demoButton = (formType !== "DEMO LOG IN") ? (
      <button
        type="button"
        className="session-button"
        onClick={ () => openModal({ type: "demologin" }) }>
          Demo Log In
      </button>
    ) : null;

    // 1. Returns a JSX element that contains the session modal
    // 2. Updates the state whenever information is inputted by the user
    // 3. The session button processes the form or renders any errors
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
              autoFocus="true"
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
              className="session-button submit-session-form" />
            { demoButton }
          </div>
        </form>
        { this.renderErrors() }
      </div>
    );
  };
};

export default SessionForm;