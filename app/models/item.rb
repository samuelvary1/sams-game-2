class Item < ActiveRecord::Base

	belongs_to :character
	belongs_to :inventory
	belongs_to :location
end