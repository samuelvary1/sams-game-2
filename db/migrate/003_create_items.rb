class CreateItems < ActiveRecord::Migration

	def change 
		create_table :items do |t|
			t.string :name
			t.text :description
			t.string :location
		end
	end
end