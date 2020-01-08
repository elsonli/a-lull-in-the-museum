import React from "react";
import { Route } from "react-router-dom";
import { AuthRoute } from "../util/route_util";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import DemoLoginFormContainer from "./session/demo_login_form_container";
import ArtworkIndexContainer from "./artwork/artwork_index_container";

const App = () => {
  return (
    <div>
      <header className="header">
        <Route
          path="/"
          render={ props => {
            return (
              <a className="header-title" onClick={ () => props.history.push("/") }>
                A Lull in the Museum
              </a>
            );
          }} />
        <Route path="/" component={ GreetingContainer } />
      </header>
      <AuthRoute exact path="/demologin" component={ DemoLoginFormContainer } />
      <AuthRoute exact path="/login" component={ LoginFormContainer } />
      <AuthRoute exact path="/signup" component={ SignupFormContainer } />

      <main>
        {/* <Route path="/artworks/:id" component={ ArtworkContainer } /> */}
        <Route exact path="/" component={ ArtworkIndexContainer } />
      </main>

    </div>
  )
};

export default App;