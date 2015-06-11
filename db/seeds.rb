# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1 = Collection.create(name: "Trains", description: "I LOVE TRAINS SO MUCH THAT I HAVE A COLLECTION OF TRAINS FOR YOU TO SEE!!!!", image_url: "http://www.history.com/news/history-lists/files/2013/10/train-robbery.jpg")
Entry.create(name: "Steam Engine 1", description: "This is my favorite steam engine.", image_url: "http://www.abingdon360.com/sites/default/files/siteadmin4/steam.train_.ja1271.jpeg", collection_id: c1.id)
Entry.create(name: "Coal Train 1", description: "This is my favorite coal train", image_url: "http://david-longman.com/sitebuilder/images/Jalainur_21_-_SY1401_on_coal_train-662x504.jpg", collection_id: c1.id)
Entry.create(name: "Caboose", description: "My favorite part of the train", image_url: "http://swrails.files.wordpress.com/2010/02/mkt-132-caboose-denison-tx-11-3-79.jpg", collection_id: c1.id)

c2 = Collection.create(name: "Pokemon Zeta", description: "Fan-made Pokemon!?!?", image_url: "http://www.enthusiacs.com/wp-content/uploads/2015/02/0.png")
Entry.create(name: "Starting Pokemon", description: "The starters in this game aren't even starters!?!", image_url: "http://www.pokemonzetaomicron.com/imgs/002.png", collection_id: c2.id)
Entry.create(name: "Challenge Modes", description: "There are crazy challenge modes where pokemon die!?!", image_url: "http://vignette1.wikia.nocookie.net/pokemonzetaomicron/images/c/c8/Capture002-2.png/revision/latest?cb=20140510184627", collection_id: c2.id)

c3 = Collection.create(name: "Dogs", description: "Dogs are funny", image_url: "https://pbs.twimg.com/profile_images/378800000822867536/3f5a00acf72df93528b6bb7cd0a4fd0c.jpeg")
Entry.create(name: "Funny Dog 1", description: "What???", image_url: "http://www.funnymisfit.com/wp-content/uploads/2012/11/derp-dog-e1358524258592.jpg", collection_id: c3.id)
Entry.create(name: "Funny Dog 2", description: "Unhghh", image_url: "http://i.imgur.com/7wPDo9t.jpg", collection_id: c3.id)
