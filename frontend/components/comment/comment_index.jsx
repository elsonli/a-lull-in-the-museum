import React from "react";
import CommentIndexItem from "./comment_index_item";
import * as Selectors from "../../reducers/selector";
import ModalContainer from "../modal/modal_container";
import CommentFormContainer from "./comment_form_container";

class CommentIndex extends React.Component {
  constructor(props) {
    super(props);
  };

  componentDidMount() {
    this.props.fetchComments();
  };

  render() {
    const {
      artwork,
      comments,
      openModal,
      currentUserId,
      destroyComment
    } = this.props;

    const fetched = comments.length !== 0;

    const selectedComments = Selectors.commentsForArtwork(comments, artwork.id);

    const renderForm = currentUserId ? <CommentFormContainer artwork={ artwork } /> : null;

    return (
      fetched ? (
        <div className="comments-container">
          <h1>Comments <strong>{ selectedComments.length }</strong> </h1>
          { renderForm }
          <ul className="comments-ul">
            {
              selectedComments.map(comment => {
                return (
                  <CommentIndexItem
                    key={ comment.id }
                    comment={ comment }
                    openModal={ openModal }
                    currentUserId={ currentUserId }
                    destroyComment={ destroyComment } />
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