# Gemfile
#This file contains all of the gems that will be used in this app - Kyle M. Brown
 
source 'https://rubygems.org'
ruby "2.1.3"
 
gem "sinatra"
gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'
 
#Tells your Mac to use sqlite locally during development
group :development do
 gem 'sqlite3'
 gem "tux"
end
 
#Tells heroku to use postgreSQL in production/live
group :production do
 gem 'pg'
end