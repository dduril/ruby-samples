# Ruby on Rails

---

These are notes for a Ruby on Rails test project: *my_first_app*, which is a working example from a class. There's very little actual code in the application, this first project was more about installing and configuring Ruby, Rails, a number of gems, and Heroku on Windows.

I've since started reading Ruby on Rails Tutorial by Michael Hartl, and set up an alternate workflow using **Cloud9**, **Bitbucket** and **Heroku**.

### Command Line Session

Documenting some of the command-line session from developing *my_first_app*. This is not comprehensive, but serves as a reminder when setting up subsequent projects. 

##Ruby, Rails, and Gems

After installing Ruby, Rails and RubyGems - check the version:

		C:\>ruby -v
		ruby 2.1.6p336

		C:\>rails -v
		Rails 4.2.1

		C:\>gem -v
		2.4.6

Alternatively, you can also type <i>--version</i>, although most type the <i>-v</i>, as it is much shorter.

		C:\>ruby --version
		ruby 2.1.6p336

		C:\>rails --version
		Rails 4.2.1

		C:\>gem --version
		2.4.6

		C:\>phantomjs -v

---

Recently, I had to reconfigure my system to get Ruby, Rails and Gems working correctly. Here is an excerpt from that session and what was required to get everything sync'd up.

***(Note: shortening the command prompt to a single right bracket)***

**First, create a new Rails application.**

In this section, I will also include the requisite git version control.

		>rails new my_app
		>cd my_app
		>git init
		>git add .
		>git status
		>git commit -m "Initial commit"
		>git log
		>rails server

Did not work!
Some diagnostics work to check the installs:

		>gem environment
		>gem list rails

Suggestion found on stackoverflow to match with version of rails to what was listed in diagnostic output. On another Rails application, I had to run similar commands to install specific versions of *capybara*, *poltergiest*, and *phantomjs*.

		>gem install rails -v 4.2.5.1
		>bundle install

Information returned from running this command may also suggest:

		>gem install bundler --pre
		>bundle update

Try running the server again:

		>rails server
		
Success! Open a browser and enter: http://localhost:3000

**Adding a controller and view**

		>rails g controller greeter hello

Update browser path to http:localhost:3000/greeter/hello

##Rake - Ruby Make

List all rake tasks to see what is available.

		>rake --tasks
		
Describe route_name - i.e. routes

		>rake --describe routes
		
Run rake task for routes.

		>rake routes

##Gems

Find out more about *gem* and then list all installed gems and find out more about a gem using *-d*

		>gem
		>gem list

My application called for *httparty*, so install the gem.

		>gem install httparty
		>gem list httparty -d

Update the *gemfile* for the Rails application.

		gem 'httparty', '0.13.5'

Back to the command line:

		>bundle install

##Heroku

Sign up for an account at **<a href="https://www.heroku.com/">Heroku</a>** and download the **<a href="https://devcenter.heroku.com/articles/heroku-command-line">Heroku Toolbelt</a>**.

Run various commands for **Heroku**: help, login, create, and open.

		>heroku help
		>heroku login
		>heroku create [application_name]

Put application under source control:

		>git remote -v
		>git push heroku master

Browse to application or run this command:

		>heroku open

Make some changes to the application, commit changes and run again (or refresh link in browser):

		>git status
		>git commit -am "Fix for application"
		>git push heroku master
		>heroku open

##Rails Scaffolding

**Create a new Rails application**

		>rails new my_car_app
		>cd my_car_app
		>git init
		>git add .
		>git commit -m "Initial commit"
		
Add Scaffolding for Cars

		>rails g scaffold car make color year:integer
		>rake db:migrate
		>rails server

Add Price Column to Cars Table

		>rails g migration add_price_to_cars 'price:decimal{10,2}'
		>rake db:migrate
		>rails server
 
---

###Rails Development Workflow

Check status of repo and create new branch:

		$ git status
		$ git checkout -b new-feature

Do work and run tests:
		
		$ bundle exec rake test

Commit and merge branch into repo:
		
		$ git add -A
		$ git commit -m "Finish new feature"
		
		$ git checkout master
		$ git merge new-feature

Push source to Bitbucket.
		
		$ git push

Deploy application to Heroku.
		
		$ git push heroku