class CreatePatients < ActiveRecord::Migration
	def self.up
		create_table :patients do |t|
			t.string :name
			t.text :birth_date
			t.string :birth_place
			t.string :address
			t.string :postal_code
			t.string :email
			t.string :taj_number
			t.timestamps
		end
	end

	def self.down
		drop_table :patients
	end
end
