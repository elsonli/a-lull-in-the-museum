import React from "react";
import { Link } from "react-router-dom";

const Greeting = props => {

  const {
    location,
    openModal,
    userLogout,
    currentUser
  } = props;

  const sessionLinks = () => {

    // const demoButton = location.pathname === "/" ? (
    //   <button className="session-button" onClick={ () => openModal({ type: "demologin" }) }>
    //     DEMO LOG IN
    //   </button>
    // ) : null;

    return (
      <nav className="login-signup">
        <button className="session-button" onClick={ () => openModal({ type: "login" }) }>
          LOG IN
        </button>
        <button className="session-button" onClick={ () => openModal({ type: "signup" }) }>
          SIGN UP
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
            DASHBOARD
          </button>
        </Link>
        <button className="session-button" onClick={ userLogout }>
          LOG OUT
        </button>
      </hgroup>
    );
  };

  return currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;