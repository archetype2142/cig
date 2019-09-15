# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotspots = [
	{ 
		lat: "52.217386",
		long: "21.013036",
		concentration: 1
	},
	{
		lat: "52.219902",
		long: "21.012118",
		concentration: 1
	},
	{
		lat: "52.222170",
		long: "21.008996",
		concentration: 2
	},
	{
		lat: "52.211602",
		long: "21.026423",
		concentration: 2
	},
	{
		lat: "52.212897",
		long: "21.022067",
		concentration: 3
	}
]

Hotspot.all.destroy_all
Hotspot.create!(hotspots)