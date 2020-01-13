import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const sessionLinks = () => {
    const demoButton = props.location.pathname === "/" ? (
      <button className="session-button" onClick={ () => props.openModal({ type: "demologin" }) }>DEMO LOG IN</button>
    ) : null;

    return (
      <nav className="login-signup">
        <button className="session-button" onClick={ () => props.openModal({ type: "login" }) }>LOG IN</button>
        <button className="session-button" onClick={ () => props.openModal({ type: "signup" }) }>SIGN UP</button>
        { demoButton }
      </nav>
    );
  };
  
  const personalGreeting = () => {
    return (
      <hgroup className="header-group">
        { // REPLACE PUSH LINK TO USER SHOW PAGE
        }
        <Link to={ `/users/${props.currentUser.id}` }>
          <button className="session-button">DASHBOARD</button>
        </Link>
        <button className="session-button" onClick={ props.userLogout }>LOG OUT</button>
      </hgroup>
    );
  };

  return props.currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;