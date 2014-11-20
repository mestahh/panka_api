require 'sinatra'
require 'sinatra/activerecord'
require './database-config'
 
get "/" do
  "hello"
end
