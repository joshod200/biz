# Biz
This repository contains a questions and answers application

## Built With
* Ruby on Rails
* Devise Token Auth
* SQLite3
* Rspec
* Shoulda matchers
* Factory bot

## Setup

### Requirements
* Ruby 2.7
* Rails 6

### Clone

```bash
git clone https://github.com/joshod200/biz_backend.git
cd biz_backend
```

### Install and migrate db
```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
```

### Start Server
```bash
rails s -p 3001
```

## Resources
### Authentication
|Resource| Description|
|--------|------------|
|POST /auth| Path to sign up|
