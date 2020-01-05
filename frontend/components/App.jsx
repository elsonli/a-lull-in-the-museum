import React from "react";
import GreetingContainer from "./greeting/greeting_container";

const App = props => {
  return (
    <div>
      <header>
        <h1>App Header</h1>
        <GreetingContainer />
      </header>
    </div>
  )
};

export default App;