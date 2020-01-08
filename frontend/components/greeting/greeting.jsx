import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const sessionLinks = () => {

    const signupButton = props.location.pathname !== "/signup" ? (
      <Link to="/signup">
        <button className="session-button">Sign Up</button>
      </Link>
    ) : null;

    const loginButton = props.location.pathname !== "/login" ? (
      <Link to="/login">
        <button className="session-button">Log In</button>
      </Link>
    ) : null;

    const demoButton = props.location.pathname === "/" ? (
      <Link to="/demologin">
        <button className="session-button">Demo Log In</button>
      </Link>
    ) : null;

    return (
      <nav className="login-signup">
        { signupButton }
        { loginButton }
        { demoButton }
      </nav>
    );
  };
  
  const personalGreeting = () => {
    return (
      <hgroup className="header-group">
        { // REPLACE PUSH LINK TO USER SHOW PAGE
        }
        <button className="session-button" onClick={ () => props.history.push("/") }>Dashboard</button>
        <button className="session-button" onClick={ props.userLogout }>Log Out</button>
      </hgroup>
    );
  };

  return props.currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;