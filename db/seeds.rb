characters_list = [
	{ 
		rank: "Captain", 
		first_name: "Alina", 
		last_name: "Smirnova", 
		role: "Sniper", 
		birthplace: "Moscow", 
		bio: "TBD", 
		inventory_id: 1 
	},

	{ 
		rank: "Lieutenant", 
		first_name: "Pavel", 
		last_name: "Barkov", 
		role: "Machine-gunner", 
		birthplace: "Leningrad", 
		bio: "TBD", 
		inventory_id: 2 
	},

	{ 
		rank: "Major", 
		first_name: "Konstantin", 
		last_name: "Babaev", 
		role: "Commissar", 
		birthplace: "Magnitogorsk", 
		bio: "TBD", 
		inventory_id: 3 
	},

	{ 
		rank: "Division Engineer", 
		first_name: "Anton", 
		last_name: "Bulgakov", 
		role: "Sapper", 
		birthplace: "Grozny", 
		bio: "TBD", 
		inventory_id: 4 
	}	
]


characters_list.each do |hash|
	p = Character.new 
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end
