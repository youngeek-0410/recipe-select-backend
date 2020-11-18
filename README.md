# Docker for Ruby on Rails 5.* 
## Version
- Ruby 2.5.*  
- Rails 5.2.4  
## Step
1. Clone this repository
2. Take commands in this order
```
$ docker-compose run web rails new . --force --no-deps --database=postgresql --skip-bundle
$ docker-compose build
```
3. Edit config/database.yml
```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: postgres
  pool: 5

development:
  <<: *default
  database: myapp_development

test:
  <<: *default
  database: myapp_test
```
4. Take commands in this order
```
$ docker-compose up -d
$ docker-compose run web rake db:create
```
5. You can access http://localhost:3000 
