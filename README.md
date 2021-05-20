# Docker for Ruby on Rails 5.* 
## Version
- Ruby 2.5.*  
- Rails 5.2.4  
## Precautions
User using Docker for Windows need to take this command.
```
$ git config --global core.autocrlf input
```
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
