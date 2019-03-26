toymakers = [
  ['Nickelodeon','action',42],
  ['Thomas-and-Friends Co.','train stuff',35],
  ['The Walt Disney Co.','princess stuff',96],
  ['Generic Co.','misc',60],
  ['Mattel Inc.','dolls',60]
  # extra seed info, will create in browser
  # ['Lego Co.','consturction',87],
  # ['Vtech Co.','educational',43],
  # ['Hasbro', 'social edu', 96]
]

toymakers.each do |co|
  Toymaker.create(brand: co[0], kind: co[1], age: co[2])
end

toy_list = [
  ['Thomas The Train','small', 'Trains', 2],
  ['Maracas','medium', 'Music', 3],
  ['Paw Patrol Race Track','large', 'Paw-Patrol', 1],
  ['Doll House','large', 'Barbie', 5],
  ['Bubbles','medium', 'Outside-Play', 4],
  ['Soccer ball','medium', 'Outside-Play', 2],
  ['Guitar','small', 'Music', 3],
  ['Thomas & Friends MINIS Motorized Raceway','medium', 'Trains', 2],
  ['Marshall Plush toy','medium', 'Paw-Patrol', 1],
]

toy_list.each do |toy|
  Toy.create!(name: toy[0], size: toy[1], theme: toy[2], toymaker_id: toy[3])
end

User.create(email: 'mal123@gmail.com', password: 'password')

User.create(email: 'joey123@gmail.com', password: 'password')

