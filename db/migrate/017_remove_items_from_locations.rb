class RemoveItemsFromLocations < ActiveRecord::Migration

	def change
		remove_column :locations, :items
	end

end