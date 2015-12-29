class RemoveKeyItemsFromLocations < ActiveRecord::Migration

	def change
		remove_column :locations, :key_item
	end

end