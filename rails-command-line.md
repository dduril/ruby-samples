# Ruby on Rails

---

These are notes for a Ruby on Rails test project: *my_first_app*, which is a working example from a class. There are a lot of pieces that need to be installed and configured, so I would like to record that information here for future projects.

### Command Line Session

I've documented some of the common command line operations and options here for a Rails test application.

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

		>rails new my_app
		>cd my_app
		>git init
		>git add .
		>git commit -m "Initial commit"
		>rails server

Did not work!
Some diagnostics work to check the installs:

		>gem environment
		>gem list rails

Suggestion found on stackoverflow to match with version of rails to what was listed in diagnostic output.

		>gem install rails -v 4.2.5.1
		>bundle install

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

##Ruby Gems

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

Sign up for an account at **Heroku** and download the **Heroku Toolbelt**.

Run various commands for **Heroku**: help, login, create, and open.

		>heroku help
		>heroku login
		>heroku create [application_name]
		>git remote -v
		>git push heroku master
		>heroku open
 