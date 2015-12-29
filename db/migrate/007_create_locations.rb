class CreateLocations < ActiveRecord::Migration
	def change
		create_table :locations do |t|
			t.string :name
			t.text :description
			t.string :items
			t.string :key_item
		end
	end

end