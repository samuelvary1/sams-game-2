class Character < ActiveRecord::Base

	has_many :items, through: :inventories
	
end