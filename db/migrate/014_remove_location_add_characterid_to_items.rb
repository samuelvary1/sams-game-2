class RemoveLocationAddCharacteridToItems < ActiveRecord::Migration


	def change
		remove_column :items, :location 
		add_column :items, :character_id, :integer
	end

end