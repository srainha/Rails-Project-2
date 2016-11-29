# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



soda = Location.create(name: "Soda", room: "10")
wheeler = Location.create(name: "Wheeler", room: "45")
moffit = Location.create(name: "Moffit", room: "Basement")
blueDoor = Location.create(name: "Blue Door Cafe", room: "Main room")

ruby = Course.create(name: "Ruby on Rails Decal")
english = Course.create(name: "English R1B")
greek = Course.create(name: "Greek History")
art = Course.create(name: "Art 101")

seth = User.create(name: "Seth", email: "seth@seth.com")
lauren = User.create(name: "Lauren", email: "lauren@lauren.com")
zhi = User.create(name: "Zhi", email: "zhi@zhi.com")
lai = User.create(name: "Lai", email: "lai@lai.com")

Event.new(course: ruby, 
    					 user: seth, 
    					 time: "Monday 10am", 
    					 location: soda,
    					 upcoming: true)

Event.new(course: english, 
    					 user: lauren, 
    					 time: "Friday noon", 
    					 location: wheeler,
    					 upcoming: true)

Event.new(course: greek, 
    					 user: zhi, 
    					 time: "Saturday from 5-10pm", 
    					 location: moffit,
    					 upcoming: true)
Event.new(course: art, 
    					 user: lai, 
    					 time: "Sunday evening", 
    					 location: blueDoor,
    					 upcoming: true)




