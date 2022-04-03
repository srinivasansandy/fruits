# Fruits


## Getting Started

These instructions will get the project up and running on your local machine for development and testing purposes. See the deployment section for notes on how to deploy the project on a live system.

### Prerequisites

* RVM
* Ruby 2.4+
* Ruby on Rails 5.2+
* Postgres 9.5.6+

### Installing

#### RVM and Ruby

* Follow the RVM installation guide found [here](https://rvm.io/rvm/install).
* Install and use the Ruby version listed in `.ruby-version`
  * `rvm install ruby-<version>`
  * `rvm use <version>`
* Create and use the Gemset listed in `.ruby-gemset`
  * `rvm gemset create <gemset>`
  * `rvm gemset use <gemset>`
* Install bundler gem
  * `gem install bundler`

#### Postgres

The method of installing Postgres depends on your OS. See [postgresql.org/download](postgresql.org/download) for a full list. Generally it's easiest to use a package manager such as apt-get on Ubuntu or Homebrew on OS X.

* Switch into the Postgres user
  * `su - postgres`
* Start psql
  * `psql`
* Create a user for the application
  * `create role user with createdb login password 'pwd'`
  * `alter user csd with superuser`

#### Dependencies

* Install libpq-dev through apt-get or another installer
* Run `bundle install` to install all gems listed in the Gemfile.

### Running in Development

#### Rails Servers

* Run `rails s` to start the Rails server.

#### Database

* Run `rake db:create db:migrate` to create and set up the database.
* **(optional)** Run `rake db:seed` to seed the database.


## Style Guides and Formatting

Ruby code must conform to Rubocop standards. ESLint and Rubocop can automatically analyze code when installed as a package on a multitude of text editors. Please ensure all checks are passing before committing any code.

## Documentation

Code documentation throughout this repository is written following [TomDoc](http://tomdoc.org/) specifications.

