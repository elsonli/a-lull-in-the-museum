import React from "react";
import { Route, Switch } from "react-router-dom";
import { AuthRoute } from "../util/route_util";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";

const App = () => {
  return (
    <div>
      <header className="header">
        <h1 className="header-title">A Lull in the Museum</h1>
        <Route exact path="/" component={ GreetingContainer } />
      </header>
      <Switch>
        <AuthRoute exact path="/login" component={ LoginFormContainer } />
        <AuthRoute exact path="/signup" component={ SignupFormContainer } />
      </Switch>
    </div>
  )
};

export default App;