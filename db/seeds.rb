# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: 'Mallory', password: '123')

# User.create(username: 'Joey', password: '123')


# toy_list = [
#   ['Thomas The Train','small', 'Trains', 1],
#   ['Maracas','medium', 'Music', 2],
#   ['Paw Patrol Race Track','large', 'Paw-Patrol', 1],
#   ['Doll House','large', 'Barbie', 2],
#   ['Bubbles','medium', 'Outside-Play',1],
#   ['Soccer ball','medium', 'Outside-Play', 2],
#   ['Guitar','small', 'Music', 2],
#   ['Thomas & Friends MINIS Motorized Raceway','medium', 'Trains', 1],
#   ['Marshall Plush toy','medium', 'Paw-Patrol', 1],
# ]

# toy_list.each do |toy|
#   Toy.create(name: toy[0], size: toy[1], theme: toy[2], user_id: toy[3])
# end

toymakers = [
  ['Nickelodeon','action',42],
  ['Thomas-and-Friends Co.','train stuff',35],
  ['The Walt Disney Co.','princess stuff',96],
  ['Generic Co.','misc',60]
  # extra seed info, will create in browser
  # ['Mattel Inc.','dolls',60],
  # ['Lego Co.','consturction',87],
  # ['Vtech Co.','educational',43],
  # ['Hasbro', 'social edu', 96]
]

toymakers.each do |co| 
  Toymaker.create(brand: co[0], kind: co[1], age: co[2])
end