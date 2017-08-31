# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# pests = Pest.create([{ name: 'Aphids', image: 'http://i.imgur.com/Q6vPlxtl.jpg', description: 'Aphids are a soft bodied, social insect that lives in clusters near a plant\'s growing tips.  They pierce plants and drain them of sap, weakening them and spreading bacterial diseases through their saliva.' }, { name: 'Cabbage Worm', image: 'http://i.imgur.com/ff78CWAm.jpg', description: 'Cabbage worms are the caterpiller stage of the white moth.  There green color makes them especially hard to spot.' }, { name: 'Corn Ear Worm', image: 'http://i.imgur.com/RuKiIb9m.jpg', description: 'Corn ear worms enter ears of corn at their silk ends and then begin consuming kernals from within the protection of the corn\'s husk.' }])

 pests = Pest.create([{ name: 'Cucumber Beetle', image: 'http://i.imgur.com/AHVHRRAm.jpg', description: 'The Cucumber Beetle is about 1/4 of an inch in length and it\'s various life stages feed and all parts of it\'s host plants, from roots to flower.' }, {name: 'Mexican Bean Beetle', image: 'http://i.imgur.com/Y5DQJEdm.jpg', description: 'The adult Mexican Beetle is a close mimic of the beneficial Lady Beetle, but if left unchecked, can do a tremendous amount of damage in a short time.' }, { name: 'Potato Beetle', image: 'http://i.imgur.com/GIRGc1ym.jpg', description: 'The Potato Beetle is a specialist and will leave other members of the Night-shade family alone.' }])

 pests = Pest.create([{ name: 'Flea Beetle', image: 'http://i.imgur.com/Xlqg2Fem.jpg', description: 'Due to it\'s small size and it\'s energetic jumping abilities, Flea Beetles can be difficult to get under control using organic methods.' }, { name: 'White Fly', image: 'http://i.imgur.com/gbN6VS7m.jpg', description: 'White flies can have a serious economic impact in grow houses where the sheltered conditions free of predators allows them to proliferate.' }])

 vegetables = Vegetable.create([{ name: 'Tomatoes', image: 'http://i.imgur.com/Eckc0rtm.jpg', comments: ' ' }, { name: 'Potatoes', image: 'http://i.imgur.com/HivfOQDm.jpg', comments: ' '}, { name: 'Broccoli', image: 'http://i.imgur.com/L2cURyNm.jpg', comments: ' ' }])

 vegetables = Vegetable.create([{ name: 'Beans', image: 'http://i.imgur.com/2IDxIUwm.jpg', comments: ' ' }, { name: 'Peas', image: 'http://i.imgur.com/HfYw5d9m.jpg', comments: ' ' }, { name: 'Corn', image:
   'http://i.imgur.com/IysO0qEm.jpg', comments: ' ' }, { name: 'Squash', image: 'http://i.imgur.com/kKIWHvDm.jpg', comments: ' ' }, { name: 'Lettuce', image: 'http://i.imgur.com/tYIiXO3m.jpg', comments: ' ' }])
