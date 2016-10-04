#Pre-work -  *Trung Manucian Blog*

**Trung Manucian Blog** is a Ruby on Rails Blog Application.

Submitted by: **Trung Nguyen**. 

Time spent **5 days**.

URL: **[Application in Heroku](trung-prework-blog.herokuapp.com)**

##User Stories
* Authentication with Devise gem, only for Admin, Guest don't need auth
* After authentication, Admin can create new Post , using markdown and highlight syntax
* As admin can add tags for post 
* As admin can edit exist post
* As admin can delete post with confirmation
* As every one (admin, guest) can search post (Using ransack gem)

###Additional 
* Every one can see number of views in a post
* Every one can leave a comment for post(Using ajax)
* Every one can filter post with tags
* As Guest can contact to admin of blog (Using mail_form and sendgrid for production environment)
* Every one can see post and share post to society network
* Using some of technique to supplement effect for blog. Such as: 
    - Parallax header image
    - Fix navbar when scroll to top
    - Animation hover menu
    - Landing post when scroll (Lazy load)
    - Some of support of bootstrap 4 version alpha (colum system, card,...)
    - .....

##Video Walkthrough
![Video Walkthrough](/app/assets/images/walkthrough.gif)
GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Difficulty
-Deploy on production environment: Javascript isn't working perfectly.
I cann't understand why javascript doesn't run, although it was precompiled successfully. 
I was tried many different way. But it is still not run.
You can clone my project on Github respository and bundle to run it on local environtment. So you can check its functionality, otherwise on heroku have some thing wrong and it doesn't work correctly. 
    *Not javascript* => *Not parallax effect, not lazy show post(post only load when we sroll), not comment on post(because i used ajax to handle comment post)*
