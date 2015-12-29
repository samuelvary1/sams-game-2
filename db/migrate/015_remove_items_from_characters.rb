class RemoveItemsFromCharacters < ActiveRecord::Migration

	def change
		remove_column :characters, :items
	end

end