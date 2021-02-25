# AceBook API

# Where The API Lives:
The AceBook API is hosted here on Heroku: [AceBook on Heroku](https://acebook-team-life-savers.herokuapp.com/).
Front-end repository (https://github.com/charlie-galb/acebook-team-lifesavers-frontend)

# How To Use:

There are only 3 paths that do not require token authentication:

  1. `POST /users#create` This allows users to create a an account.
  2. `GET /logged_in` This can be used to check if a user is logged in.
  3. `GET /sessions#new` This is the page you'll see when you click on the link above.
 
On creation of an account, a token is created and passed through to the requester. This is also done on log-in. 
In order to use this API, you will always need to pass through your authorization token via a header as so:

`post '/log-in', params {}, headers: { Authorization: <YOUR NUM HERE> }`

Functionality exists for the following:

  - Users can create posts
  - Users can comment on posts
  - Users can like a post one time
  - Users can unlike a post (the routing is not completed for this feature)
  - Users can sign up, log in, and log out
 
# Planning
## User Stories

**AceBook User Stories:**
**Essentials/MVP**
```
As a user,
So that I can see what people are up to,
I would like to see posts in reverse chronological order

As a user,
So that I can personalize my experience with AceBook,
I would like to be able to sign up with my email address, name, and password.

As a user,
So that I can use my AceBook account,
I would like to be able to log in.

As a user,
So that no one else can post as me,
I would like to be able to log out.

As a user,
So that I can tell people what I’m up to,
I would like to be able to publish a post.

As a user,
So that I can see when a post was written,
I would like to be able to see the day and time it was published.

As a user,
So that I can interact with the AceBook community,
I would like to be able to like a post.

As a user,
So that my opinions can be heard,
I would like to be able to comment on a post.
```
**Great to have:**
-------
```
As a user,
So that I can fix typos,
I would like to be able edit my own post.

As a user,
So that I can erase embarassing mistakes,
I would like to be able to delete any of my own posts.

As a user,
So that I can keep track of my friends’ lives,
I would like to be able to add friends.

As a user,
So that I can choose my friends,
I would like to be able to send a friend request.

As a user,
So that I don’t have to be friends with people I don’t know or like,
I would like to be able to refuse a friend request.

As a user,
So that I can be added by my friends,
I would like to be able to accept a friend request.

As a user,
So that I can see who wants to be my friend,
I would like to be able to see ‘pending friend requests’ that are waiting on my acceptance/refusal.

As a user,
So that I can have control over my ‘feed’,
I would like to only see my friends’ posts.
```
**Not Necessary, but nice:**
-------
```
As a user,
So that I can send a public message to my friend that they and their friends can see,
I would like to be able to write on their ‘wall’/profile.

As a user,
So that I can send a personal message,
I would like to be able to private message any user.
```

## Some Diagrams From Our Process:

As we changed our repo from a full application to a backend API, a few things have changed. Here were some of our initial planning diagrams, though some aspects are no longer fully relevant:

![log-in-diagram](https://tinyurl.com/login-feature-diagram)

Our dislikes DB is the same as our likes DB.

![dislikes db](https://tinyurl.com/post-likes-dislikes)


![comments diagram](https://tinyurl.com/comment-database)

