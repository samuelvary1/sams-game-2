class CreateInventories < ActiveRecord::Migration

	def change 
		create_table :inventories do |t|
			t.integer :capacity
			t.string :num_items
			t.string :items
		end
	end

end