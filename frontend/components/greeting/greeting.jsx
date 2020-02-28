import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const {
    openModal,
    userLogout,
    currentUser
  } = props;

  // 1. Returns a JSX element that contains the session buttons
  // 2. Each of these session buttons should open up the corresponding modal
  //    by dispatching an asynchronous thunk action creator to the store
  const sessionLinks = () => {
    return (
      <nav className="login-signup">
        <button className="session-button" onClick={ () => openModal({ type: "login" }) }>
          Log In
        </button>
        <button className="session-button" onClick={ () => openModal({ type: "signup" }) }>
          Sign Up
        </button>
        {/* { demoButton } */}
      </nav>
    );
  };
  
  const personalGreeting = () => {
    return (
      <hgroup className="header-group">
        <Link to={ `/users/${ currentUser.id }` }>
          <button className="session-button">
            Dashboard
          </button>
        </Link>
        <button className="session-button" onClick={ userLogout }>
          Log Out
        </button>
      </hgroup>
    );
  };

  return currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;