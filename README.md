# Appointments App

This is a simple (currently) appointments web app for small businesses.
[![Build Status](https://travis-ci.com/UribeNelson/nu-appointments.svg?branch=master)](https://travis-ci.com/UribeNelson/nu-appointments)

It's being developed using:

* Ruby 2.7.1
* Yarn 1.22.4
* Postgresql 12.4

If you want to run it locally, make sure to set your local Postgresql credentials inside the development section of `config/database.yml` before running the db commands:

1. `bundle install` for ruby dependencies
2. `yarn` for node dependencies
3. `rails db:create` to create the database
4. `rails db:migrate` to apply database migrations
5. finally `rails s` to run the app
