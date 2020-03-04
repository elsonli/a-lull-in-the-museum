# A Lull in the Museum

A Lull in the Museum is a gallery of digital artworks that can be viewed anywhere!

<img src="https://i.imgur.com/7mdmHzR.jpg" />

## Features

* User authentication
* Artwork gallery with photos and videos
* Favorite artworks (for registered users)
* Comment on artworks (for registered users)
* Edit or delete comments (for comment authors)
* User dashboard (for registered users)
* Other Planned Features Not Yet Implemented
  * Media queries
  * Demo login ghost typing
  * Autoplay background intro video
  
## Getting Started and Usage

* Visit <a href="https://a-lull-in-the-museum.herokuapp.com/">A Lull in the Museum</a>
* Log in with the demo user to access all functionality
* Browse through the artworks, leaving comments and likes!

## Technologies
* Backend: PostgreSQL, Ruby on Rails
* Frontend: React, Redux
* Production: AWS, Heroku

## Feature Implementation Issues
* Back and forward arrows link to invalid URLs on the first and last artwork respectively
  * Regex is used to match the artwork's ID in the url to cause a redirect
    ```javascript
    const artworkId = this.props.match.params.id;
    const regexMatchId = /^[0-9]*$/g;
    const matches = regexMatchId.exec(artworkId);
    if (!matches || matches < 1 || matches > 47) return <Redirect to="/" />;
    ```
* Opening modals for images and videos
  * A modal is passed as an object with type and URL properties to the action creators, rather than just an object with a type property, enabling for easier access to information to be rendered
    ```javascript
    const { artwork, openModal } = this.props; 
    <ul className="artwork-photos">
      {
        artwork.photoUrls.map((url, idx) => {
          return (
            <li key={ idx } onClick={ () => openModal({ type: "zoomImage", url: url }) }>
              <img className="artwork-img" src={ url } />
            </li>
          );
        })
      }
    </ul>
    ```

## Release History
* 0.0.1
  * Initial release
