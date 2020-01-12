import React from "react";
import CommentIndexItem from "./comment_index_item";
import * as Selectors from "../../reducers/selector";

class CommentIndex extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchComments();
  };

  render() {
    const { comments, artwork, currentUserId } = this.props;

    const fetched = comments.length !== 0;

    const selectedComments = Selectors.commentsForArtwork(comments, artwork.id);

    return (
      fetched ? (
        <div className="comments-container">
          <h1>Comments <strong>{ selectedComments.length }</strong> </h1>
          {/* CommentFormComponent here, only logged in users can see */}
          <ul className="comments-ul">
            {
              selectedComments.map(comment => {
                return (
                  <CommentIndexItem
                    key={ comment.id }
                    comment={ comment } />
                );
              })
            }
          </ul>
        </div>
      ) : null
    );
  };
};

export default CommentIndex;