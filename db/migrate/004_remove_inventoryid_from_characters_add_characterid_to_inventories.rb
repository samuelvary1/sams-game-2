class RemoveInventoryidFromCharactersAddCharacteridToInventories < ActiveRecord::Migration

	def change
		add_column :inventories, :character_id, :integer
		remove_column :characters, :inventory_id, :integer
	end
end