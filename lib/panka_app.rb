require 'sinatra'
require 'active_record'

require_relative 'model/patient'

class Panka < Sinatra::Base

	ActiveRecord::Base.establish_connection(
      :adapter  => 'sqlite3',
      :database => 'spec/test.db'
    )

    ActiveRecord::Schema.define do
      unless ActiveRecord::Base.connection.tables.include? 'patients'
        create_table :patients do |table|
          table.column :name, :string
          table.column :birth_date, :date
        end
      end
    end

    Patient.new(:name => "Peti", :birth_date => Time.now).save

	get "/patients" do
		patients = Patient.all.to_json
	end

	post "patient" do
	end

	delete "patient/:id" do |id|
		Patient.find(id).destroy
	end

	get "/patient/:id" do |id|
		Patient.find(id).to_json
	end

	put "patient" do
		patient = Patient.find(params[:id])
		unless patient == null
			patient.update(:name => params[:name], :birth_date => params[:birth_date])
		end
	end

	run! if app_file == $0
	
end
