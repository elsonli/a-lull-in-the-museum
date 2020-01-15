import React from "react";
import { Route, Switch, Redirect } from "react-router-dom";
import { AuthRoute } from "../util/route_util";
import GreetingContainer from "./greeting/greeting_container";
import ArtworkIndexContainer from "./artwork/artwork_index_container";
import ArtworkContainer from "./artwork/artwork_container";
import IntroContainer from "./intro/intro_container";
import ModalContainer from "./modal/modal_container";
import UserDashboardContainer from "./user/user_dashboard_container";

const App = () => {
  return (
    <div className="app-container">

      {/* Contains the logic for the Session and Artwork Zoom modals */}
      <ModalContainer />

      {/* Contains the Nav Bar for the home page of the site */}
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
        <a className="fa github" target="_blank" href="https://github.com/elsonli">
          <i className="fab fa-github"></i>
        </a>
        <Route path="/" component={ GreetingContainer } />
      </header>

      {/* Contains the Splash right under the Nav Bar */}
      <Route exact path="/" component={ IntroContainer } />

      {/* Contains logic for what will be rendered in the body */}
      <main>
        <Switch>
          <Route path="/users/:id" component={ UserDashboardContainer } />
          <Route path="/artworks/:id" component={ ArtworkContainer } />
          <Route exact path="/" component={ ArtworkIndexContainer } />
          <Route path="*" render={ () => <Redirect to="/" /> } />
        </Switch>
      </main>

      <footer>
        <Route
          path="/"
          render={ () => {
            return (
              <div>
                <a className="fa linkedin" target="_blank" href="https://www.linkedin.com/in/elsonli/">
                  <i className="fab fa-linkedin"></i>
                </a>
                <a className="fa github" target="_blank" href="https://github.com/elsonli">
                  <i className="fab fa-github"></i>
                </a>
              </div>
            );
          }} />
      </footer>

    </div>
  )
};

export default App;