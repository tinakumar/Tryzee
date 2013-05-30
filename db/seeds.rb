# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.destroy_all

manufacturers = Manufacturer.create([ { name: "BOB"},
                            { name: "Bugaboo"},
                            { name: "Quinny"},
                            { name: "Baby Jogger"},
                            { name: "JJ Cole"},
                            { name: "Mutsy"},
                            { name: 'UPPAbaby'}  ])

puts "#{manufacturers.count} manufacturers created"

Category.destroy_all

categories = Category.create([ { name: "Baby Stroller"},
                            { name: "Baby Monitor"},
                            { name: 'Car Seat'}  ])

puts "#{categories.count} categories created"

Product.destroy_all

products = Product.create([ { model_name: "Revolution SE", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Revolution SE Duallie", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Stroller Strides Fitness Stroller", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Stroller Strides Duallie", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Motion", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Ironman", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Revolution CE", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Sport Utility Stroller", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { model_name: "Donkey", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { model_name: "Bee", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { model_name: "Cameleon 3", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { model_name: "Moodd by Britto", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { model_name: "Moodd", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { model_name: "Buzz", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { model_name: "Zapp Xtra", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { model_name: "'Vista' Stroller", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { model_name: "Cruz", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { model_name: "G-Luxe", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { model_name: "Transporter Light-Weight Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { model_name: "4 Rider Light Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { model_name: "4 Rider Single Spoke Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { model_name: "F.I.T. Single Stroller", manufacturer_name: "Baby Jogger", category_name: "Baby Stroller"},
                            { model_name: "Broadway Stroller", manufacturer_name: "JJ Cole", category_name: "Baby Stroller"},
                            { model_name: "Monroe", manufacturer_name: "JJ Cole", category_name: "Baby Stroller"},
                            { model_name: 'Ironman Duallie', manufacturer_name: "BOB", category_name: "Baby Stroller"}  ])

puts "#{products.count} products created"

Model.destroy_all

models = Model.create([ { name: "Revolution SE", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Revolution SE Duallie", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Stroller Strides Fitness Stroller", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Stroller Strides Duallie", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Motion", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Ironman", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Revolution CE", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Sport Utility Stroller", manufacturer_name: "BOB", category_name: "Baby Stroller"},
                            { name: "Donkey", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { name: "Bee", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { name: "Cameleon 3", manufacturer_name: "Bugaboo", category_name: "Baby Stroller"},
                            { name: "Moodd by Britto", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { name: "Moodd", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { name: "Buzz", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { name: "Zapp Xtra", manufacturer_name: "Quinny", category_name: "Baby Stroller"},
                            { name: "'Vista' Stroller", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { name: "Cruz", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { name: "G-Luxe", manufacturer_name: "UPPAbaby", category_name: "Baby Stroller"},
                            { name: "Transporter Light-Weight Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { name: "4 Rider Light Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { name: "4 Rider Single Spoke Stroller", manufacturer_name: "Mutsy", category_name: "Baby Stroller"},
                            { name: "F.I.T. Single Stroller", manufacturer_name: "Baby Jogger", category_name: "Baby Stroller"},
                            { name: "Broadway Stroller", manufacturer_name: "JJ Cole", category_name: "Baby Stroller"},
                            { name: "Monroe", manufacturer_name: "JJ Cole", category_name: "Baby Stroller"},
                            { name: 'Ironman Duallie', manufacturer_name: "BOB", category_name: "Baby Stroller"}  ])

puts "#{models.count} models created"


