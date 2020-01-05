import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const sessionLinks = () => {
    return (
      <nav className="login-signup">
        <Link to="/login">
          <button className="session-button">Log In</button>
        </Link>
        <Link to="/signup">
          <button className="session-button">Sign Up</button>
        </Link>
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