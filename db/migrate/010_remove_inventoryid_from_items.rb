class RemoveInventoryidFromItems < ActiveRecord::Migration

	def change
		remove_column :items, :inventory_id
	end

end