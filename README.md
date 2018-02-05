[Offers App](https://ih0.redbubble.net/image.118888820.1283/sticker,375x360-bg,ffffff.u3.png)

# Offers App

| Summary                                                                                          |
|--------------------------------------------------------------------------------------------------|
| [Getting Started](#getting-started-go-to-summary)                                                |
| [The Admin Interface](#the-admin-interface-go-to-summary)                                                |
| [The User Interface](#the-user-interface-go-to-summary)                                                |
| [Deployment And Running Instructions](#deployment-and-running-instructions-go-to-summary)       |

## Getting Started - [go to summary](#offers-app)

This is  a small web application that displays oﬀers to users. For example, imagine tha this app is 
a Walmart's partner, and that it has many active oﬀers (10% discount on clothes, 20% discount on car 
parts, etc), so, in this scenario the application will show it's active offers  to the users. This 
application is divided in two major components: the admin interface and the user interface.

### Production URL
_TODO: to implement_

## The Admin Interface - [go to summary](#offers-app)

An administrator should be able to create, edit, enable/disable and delete offers using a form.

## The User Interface - [go to summary](#offers-app)

An user should be able to navigate throw the listed offers and after click into an oﬀer this user 
should be redirected to the advertiser website (like Walmart in the [Getting Started](#getting-started-go-to-summary) 
example). The users interface is completely responsive.

## Deployment And Running Instructions - [go to summary](#offers-app)

This session is intended to list whatever steps are necessary to get the application up and running. 
Besides that, here you'll find some technical informations like versions and jobs to be executed.

* App hosted at `Heroku` _TODO: to implement_
* Ruby Version `2.4.2`
* Rails Version `5.1.4`
* Database `PostgreSQL`
* Rails Server `Puma`
* Running the application for the first time
  * First, after cloning and accessing the project directory run `bundle` command to install the gems
  * Then, open the `config/application.yml` file and verify if the connection information for the 
   database is correct (`DATABASE_NAME`, `DATABASE_USER`, `DATABASE_PASSWORD`, `DATABASE_HOST`) for
   the environments you want to run (`development`, `test`, `production`);
  * Then, run the commands to create, migrate and seed the database according to the wanted environment:
      * `RAILS_ENV=development rails db:create db:migrate db:seed`
      * `RAILS_ENV=test rails db:create db:migrate db:seed`
      * `RAILS_ENV=production rails db:create db:migrate db:seed`
  * Then, run the commands to remove compiled assets and recompile them (`development` and `test` 
  environment don't need this step):
      * `RAILS_ENV=production bundle exec rails assets:clobber`
      * `RAILS_ENV=production bundle exec rails assets:precompile`
  * Finally, just run the application according to the wanted environment:
      * `rails start` for development environment 
      * `rails start -e test` for development test
      * `rails start -e production` for development production
* Deployment instructions
  * If the project is already running on the server you just need to commit on `production` branch to 
  start the deploy on production.
