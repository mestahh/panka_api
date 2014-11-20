require 'sinatra'
require 'sinatra/config_file'

register Sinatra::ConfigFile
config_file 'config/configuration.yml'


get "/patients" do
	settings.greeting
end

post "patient" do
end

delete "patient/:id" do |id|
	"delete patient #{id}"
end

get "/patient/:id" do |id|
	"find patient by id: #{id}"
end

put "patient" do
	# patient = Patient.find(params[:id])
	# unless patient == null
	# 	patient.update(:name => params[:name], :birth_date => params[:birth_date])
	# end
	"update patient"
end

