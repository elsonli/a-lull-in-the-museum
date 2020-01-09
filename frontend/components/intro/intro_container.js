import Intro from "./intro";
import { connect } from "react-redux";

const mapStateToProps = state => {
  return {
    header: "Borderless World",
    description: "People understand and recognize the world through their bodies, moving freely and forming connections and relationships with others. As a consequence the body has its own sense of time. In the mind, the boundaries between different thoughts are ambiguous, causing them to influence and sometimes intermingle with each other. A Lull in the Museum is a group of artworks that form one borderless world. Artworks move out of the rooms freely, form connections and relationships with people, communicate with other works, influence and sometimes intermingle with each other, and have the same concept of time as the human body.\n\nPeople lose themselves in the artwork world. The borderless works transform according to the presence of people, and as we immerse and meld ourselves into this unified world, we explore a continuity among people, as well as a new relationship that transcends the boundaries between people and the world."
  };
};

export default connect(mapStateToProps)(Intro);