# Jason's Travelog
<a href="http://json-travelog.herokuapp.com" title="Jason's Travelog">Visit the blog here</a>

## Specs:

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

# Rails Blog with has_many

Make a blog. It will have posts. The posts have comments. This is for you to practice and explore. Use everything we've learned so far. Push yourself as far as you can. 

## Additional explorations: 

- Make the comments have nested comments under them, like Hacker News or Reddit
- Use *validations* to ensure the posts and comments have the required data, and of the proper and expected type. 
- Make it so that blog posts belong to a category, so that they can be viewed by category
- Figure out *pagination*, so that your index page isn't potentially hundreds of blog posts, but rather pages through 5 or 10 at a time
- Implement user authentication so that posts and comments can only be done by registered users. Use Warden or Devise for this. 
- Use a CSS framework like Bootstrap, or create your own CSS stylesheets from scratch
- Deploy to Heroku
