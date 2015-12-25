class CreateCharacters < ActiveRecord::Migration
	def change
		create_table :characters do |t|
			t.string :rank
			t.string :first_name
			t.string :last_name
			t.string :role
			t.string :birthplace
			t.text :bio
			t.integer :inventory_id
		end
	end

end