# Ruby on Rails

The goal is to provide a Ruby on Rails primer with resources for getting started, essential websites and examples of the Ruby programming language and Rails command-line interface. 

Included here are popular links for Ruby Programming and Ruby on Rails Web Development.

Additional code samples and command-line scripts will be added to appropriate folders.

---

### Getting Started

- **<a href="http://railsinstaller.org/en" target="_blank">RailsInstaller</a>**

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

Recently, I had to reconfigure my system to get Ruby, Rails and Gems working correctly. Here is the command line session and what was required to get things working:

		>rails new my_app
		>cd my_app
		>git init
		>git add .
		>git commit -m "Initial commit"
		>rails server

		# did not work!
		# some diagnostics work to check installs

		>gem environment
		>gem list rails

		#suggestion found on stackoverflow to match with version of rails

		>gem install rails -v 4.2.5.1
		>bundle install

		>rails server
		
		#success! browse to http://localhost:3000

		

---

### Ruby Programming Language

- **<a href="https://www.ruby-lang.org/en/" target="_blank">Ruby</a>**
- **<a href="https://en.wikipedia.org/wiki/Ruby_(programming_language)" target="_blank">Ruby - Wikipedia</a>**

### RubyGems

- **<a href="https://rubygems.org/" target="_blank">RubyGems</a>**
- **<a href="https://en.wikipedia.org/wiki/RubyGems" target="_blank">RubyGems - Wikipedia</a>**

### Ruby on Rails

- **<a href="http://rubyonrails.org/" target="_blank">Rails</a>**
- **<a href="https://en.wikipedia.org/wiki/Ruby_on_Rails" target="_blank">Rails - Wikipedia</a>**
- **<a href="http://bundler.io/" target="_blank">Bundler</a>**
- **<a href="http://rake.rubyforge.org/" target="_blank">Rake</a>** 

### Deployment Options

- **<a href="https://www.engineyard.com/" target="_blank">Engine Yard</a>**
- **<a href="https://www.heroku.com/" target="_blank">Heroku</a>**
- **<a href="https://toolbelt.heroku.com/" target="_blank">Heroku Toolbelt</a>**
- **<a href="https://www.openshift.com/" target="_blank">OpenShift</a>**

### Often Used with Rails - Web Development

- **<a href="https://angularjs.org/" target="_blank">AngularJS</a>**
- **<a href="http://getbootstrap.com/" target="_blank">Bootstrap</a>**
- **<a href="https://developer.mozilla.org/en-US/docs/Web/HTML" target="_blank">HTML</a>** / **<a href="https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5" target="_blank">HTML5</a>**
- **<a href="https://developer.mozilla.org/en-US/docs/Web/CSS" target="_blank">CSS</a>** / **<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS3" target="_blank">CSS3</a>**
- **<a href="https://jquery.com/" target="_blank">jQuery</a>**

### Often Used with Rails - Database

- **<a href="https://www.mongodb.com/" target="_blank">MongoDB</a>**
- **<a href="https://www.mysql.com/" target="_blank">MySQL</a>**
- **<a href="https://www.postgresql.org/" target="_blank">PostgreSQL</a>**
- **<a href="https://www.sqlite.org/" target="_blank">SQLite</a>**

### Development Environments (IDE)

- **<a href="http://www.aptana.com/" target="_blank">Aptana Studio</a>**
- **<a href="https://www.jetbrains.com/ruby/" target="_blank">RubyMine</a>**
- **<a href="https://www.sublimetext.com/" target="_blank">Sublime Text</a>**

### Tools

- **<a href="https://git-scm.com/" target="_blank">Git</a>** (Version Control/Source Code Management)
- **<a href="https://github.com/" target="_blank">Github</a>** (web-based Git repository hosting service)

### Tutorials

- **<a href="https://www.ruby-lang.org/en/documentation/quickstart/" target="_blank">Ruby in Twenty Minutes</a>**
- **<a href="http://guides.rubyonrails.org/" target="_blank">Ruby on Rails Guides</a>**

---

### Recommended Books

- Agile Web Development with Rails
- Eloquent Ruby
- Head First Ruby
- Programming Ruby (Pick-axe book)
- Ruby on Rails Tutorial
- The Rails Way
- The Well-Grounded Rubyist