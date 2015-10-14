# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
images_list = [
  "bat-2",
  "bat-3",
  "bat",
  "black_cat-2",
  "black_cat-3",
  "black_cat",
  "cemetery-2",
  "cemetery-3",
  "cemetery",
  "chucky",
  "coffin-2",
  "coffin",
  "frankenstein",
  "freddy_krueger",
  "ghost-2",
  "ghost-3",
  "ghost",
  "gingerbread_men",
  "gremlin",
  "halloween_candy-2",
  "halloween_candy-3",
  "halloween_candy",
  "headstone-2",
  "headstone-3",
  "headstone",
  "hellraiser_pinhead",
  "horror-2",
  "horror-3",
  "horror",
  "jason_voorhees",
  "michael_myers",
  "mummy-2",
  "mummy-3",
  "mummy",
  "predator",
  "scream",
  "skeleton-2",
  "skeleton-3",
  "skeleton",
  "spider-2",
  "spider-3",
  "spider",
  "triller-2",
  "triller-3",
  "triller",
  "vampire-2",
  "vampire",
  "werewolf-2",
  "werewolf",
  "witch-2",
  "witch",
  "wizard-2",
  "wizard",
  "zombie-2",
  "zombie"
]
images_list.each do |name|
  Image.create( name: name )
end
