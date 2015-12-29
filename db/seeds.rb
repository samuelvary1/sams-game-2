characters_list = [
	{ 
		id: 1,
		rank: "Captain", 
		first_name: "Alina", 
		last_name: "Smirnova", 
		role: "Sniper", 
		birthplace: "Moscow", 
		bio: "TBD"
	},

	{ 
		id: 2,
		rank: "Lieutenant", 
		first_name: "Pavel", 
		last_name: "Barkov", 
		role: "Machine-gunner", 
		birthplace: "Leningrad", 
		bio: "TBD"
	},

	{ 
		id: 3,
		rank: "Major", 
		first_name: "Konstantin", 
		last_name: "Babaev", 
		role: "Commissar", 
		birthplace: "Magnitogorsk", 
		bio: "TBD"
	},

	{ 
		id: 4,
		rank: "Division Engineer", 
		first_name: "Anton", 
		last_name: "Bulgakov", 
		role: "Sapper", 
		birthplace: "Grozny", 
		bio: "TBD"
	}	
]


characters_list.each do |hash|
	p = Character.new 
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end
