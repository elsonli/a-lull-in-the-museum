import React from "react";

class Like extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    console.log("mounting")
    this.props.fetchLikes();
  };

  render() {
    const { likes, currentUserId, createLike, destroyLike } = this.props;
    // return (
    //   likes ? (
    //     <div>
    //       <button onClick={ () => createLike(currentUserId) }>Create</button>
    //       <button onClick={ () => destroyLike(currentUserId) }>Delete</button>
    //     </div>
    //   ) : null
    // );
    return (
      likes ? (
        <h1>awrjlawrl</h1>
      ) : null
    )
  };
};

export default Like;