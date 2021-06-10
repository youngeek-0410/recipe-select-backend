# Ruby on Rails 6.* by Docker
## Version
- Ruby 2.7.1  
- Rails 6.0.3.7  
## Step
1. Clone this repository
2. Take commands in this order
```
$ source env.sh
$ build
$ rails db:create
$ up
```
5. You can access http://localhost:3000 
## Options
```
$ source env.sh
$ rspec
$ rubocop
$ yarn
```
## Precautions
User using Docker for Windows need to take this command.
```
$ git config --global core.autocrlf input
```
