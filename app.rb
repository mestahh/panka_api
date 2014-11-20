require 'sinatra'
require 'sinatra/activerecord'
require './database-config'

get "/" do
	"hello"
end

get "/patients" do
	Patient.all.to_json
end

get "/add_patient" do
	Patient.new(
	:name => params[:name],
	:birth_date => params[:birth_date],
	:birth_place => params[:birth_place],
	:address => params[:address],
	:postal_code => params[:postal_code],
	:email => params[:email],
	:taj_number => params[:taj_number]).save
	{}
end

get "/patient/:id" do |id|
	Patient.find(id).to_json
end

get "/delete_patient/:id" do |id|
	Patient.find(id).destroy
end

class Patient < ActiveRecord::Base

end
