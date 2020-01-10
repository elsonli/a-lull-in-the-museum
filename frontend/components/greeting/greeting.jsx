import React from "react";

const Greeting = props => {

  const sessionLinks = () => {
    const demoButton = props.location.pathname === "/" ? (
      <button className="session-button" onClick={ () => props.openModal("demologin") }>DEMO LOG IN</button>
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