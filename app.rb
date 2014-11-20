require 'sinatra'
require 'sinatra/activerecord'
require './database-config'
 
get "/" do
  @posts = Post.order("created_at DESC")
  @title = "Welcome."
  erb :"posts/index"
end
 
class Post < ActiveRecord::Base
end