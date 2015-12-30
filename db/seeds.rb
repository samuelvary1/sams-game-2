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


locations_list = [
	{
		id: 1, 
		name: "apartment",
		description: "It appears to be an old, abandoned apartment"

	},

	{
		id: 2,
		name: ,
		description: 
	},

	{
		id: 3,
		name: ,
		description: 
	},

	{
		id: 4,
		name: ,
		description:
	},

	{
		id: 5,
		name: ,
		description:
	},

	{
		id: 6
		name: ,
		description: 
	}

]


items_list = [
	{
		id: 1,
		name: "",
		description: "",
		location_id: ,
		character_id: nil
	}

]

items_list.each do |hash|
	p = Item.new
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end

locations_list.each do |hash|
	p = Location.new
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end

characters_list.each do |hash|
	p = Character.new 
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end
