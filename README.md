[![Build status][ci-image]][ci-url] [![Code Climate](https://codeclimate.com/github/fishermanswharff/TheBlog/badges/gpa.svg)](https://codeclimate.com/github/fishermanswharff/TheBlog)
Jason's Travelog
=============
[Visit the site here](http://json-travelog.herokuapp.com)

Features
------
* User authentication with devise. 
* Authorized actions for registered users. No creation/deletion without authorized account signin
* Image hosting via AWS S3 server.
* Commenting on articles, connecting comment to user account—no anonymous comments!
* Search for your favorite categories!
* User dashboard featuring only user's articles, and selected information about users on the site
* WYSIWYG editor allows rich html editing
* Full-bleed image slider on landing page
* Articles, comments, and categories validate proper information
* #nobootstrap
* #nofoundation
* #noframeworks

Project Description
------
This project was created as a mini project in General Assembly's Web Development Immersive Program (Sept. 2014). It was scoped and developed over a weekend. 

Installation
------
This app requires an Amazon Web Services API key and an S3 bucket name. The AWS secret keys must be initialized in `config/environments/[environment].rb`, and also in the article model, since I'm using Thoughtbot's [Paperclip](https://github.com/thoughtbot/paperclip) gem. 

Once you fork and clone, run `rake db:create db:migrate`, fire up your rails server, and navigate to localhost:3000. TheBlog should prompt you to create a new user.

[ci-image]: https://travis-ci.org/fishermanswharff/TheBlog.svg?branch=master
[ci-url]: https://travis-ci.org/fishermanswharff/TheBlog