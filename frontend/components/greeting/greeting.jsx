import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const sessionLinks = () => {
    const demoButton = props.location.pathname === "/" ? (
      <Link to="/demologin">
        <button className="session-button">DEMO LOG IN</button>
      </Link>
    ) : null;

    return (
      <nav className="login-signup">
        <button className="session-button" onClick={ () => props.openModal("login") }>LOG IN</button>
        <button className="session-button" onClick={ () => props.openModal("signup") }>SIGN UP</button>
        { demoButton }
      </nav>
    );
  };
  
  const personalGreeting = () => {
    return (
      <hgroup className="header-group">
        { // REPLACE PUSH LINK TO USER SHOW PAGE
        }
        <button className="session-button" onClick={ () => props.history.push("/") }>DASHBOARD</button>
        <button className="session-button" onClick={ props.userLogout }>LOG OUT</button>
      </hgroup>
    );
  };

  return props.currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;