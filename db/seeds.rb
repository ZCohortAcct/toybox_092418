# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Mallory', password: '123')

User.create(username: 'Joey', password: '123')


toy_list = [
  ['Thomas The Train','small', 'Trains', 1],
  ['Maracas','medium', 'Music', 2],
  ['Paw Patrol Race Track','large', 'Paw-Patrol', 1],
  ['Doll House','large', 'Barbie', 2],
  ['Bubbles','medium', 'Outside-Play',1],
  ['Soccer ball','medium', 'Outside-Play', 2],
  ['Guitar','small', 'Music', 2],
  ['Thomas & Friends MINIS Motorized Raceway','medium', 'Trains', 1],
  ['Marshall Plush toy','medium', 'Paw-Patrol', 1],
]

toy_list.each do |toy|
  Toy.create(name: toy[0], size: toy[1], theme: toy[2], user_id: toy[3])
end