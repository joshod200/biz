# Biz
This repository contains a questions and answers application

## Built With
* Ruby on Rails
* Devise Token Auth
* SQLite3
* Rspec
* Shoulda matchers
* Factory bot

## Features
* Create question
* View all questions
* Submit an answer to a question
* View question and available answers

## Setup

### Requirements
* Ruby 2.7
* Rails 6

### Backend

* Clone repo
* `cd <repository-path>`

#### Install and migrate db
* `bundle install`
* `rails db:create`
* `rails db:migrate`
* `rails db:seed`

#### Start Server
* `rails s -p 3001`
