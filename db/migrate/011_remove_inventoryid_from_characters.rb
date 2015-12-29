class RemoveInventoryidFromCharacters < ActiveRecord::Migration

	def change
		remove_column :characters, :inventory_id
		add_column :characters, :items, :string
	end

end