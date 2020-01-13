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
    <div>

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

    </div>
  )
};

export default App;