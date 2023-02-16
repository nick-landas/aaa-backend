# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



  User.create(name: 'Chihiro', email: Faker::Internet.email, image_url: 'https://i.imgur.com/wYB9bkL.jpg')
  User.create(name: 'Yubaba', email: Faker::Internet.email, image_url: 'https://i.imgur.com/cuoTYYf.jpg')
  User.create(name: 'Kaonashi', email: Faker::Internet.email, image_url: 'https://i.imgur.com/PfNDeaw.jpg')
  User.create(name: 'Satsuki', email: Faker::Internet.email, image_url: 'https://i.imgur.com/tWouThD.png')
  User.create(name: 'Totoro', email: Faker::Internet.email, image_url: 'https://i.imgur.com/OHchCyM.jpg')
  User.create(name: 'Makkuro', email: Faker::Internet.email, image_url: 'https://i.imgur.com/zDGPsKy.jpg')
  User.create(name: 'Nekobus', email: Faker::Internet.email, image_url: 'https://i.imgur.com/Crw1a0Q.jpg')
  User.create(name: 'Kiki', email: Faker::Internet.email, image_url: 'https://i.imgur.com/ssf2biz.jpg')
  User.create(name: 'Jiji', email: Faker::Internet.email, image_url: 'https://i.imgur.com/zclutib.jpg')
  User.create(name: 'Ashitaka', email: Faker::Internet.email, image_url: 'https://i.imgur.com/no0jQe5.jpg')
  User.create(name: 'Forrest', email: Faker::Internet.email, image_url: 'https://i.imgur.com/eIlYjD2.jpg')
  User.create(name: 'Bubba', email: Faker::Internet.email, image_url: 'https://i.imgur.com/dFu6NfP.jpg')
  User.create(name: 'Morgan', email: Faker::Internet.email, image_url: 'https://i.imgur.com/4k5IS2s.jpg')
  User.create(name: 'Tim', email: Faker::Internet.email, image_url: 'https://i.imgur.com/38lNvai.jpg')



  Group.create(name: 'Sweet Home Alabama', description: 'All things Dixie', image_url: 'https://i.imgur.com/3dw1Vfv.jpg')
  Group.create(name: 'Beach Life ', description: 'Beach life and events', image_url: 'https://i.imgur.com/f1sc7ql.jpg')
  Group.create(name: 'Fighing & Boating', description: 'Aye, aye! Skipper.', image_url: 'https://i.imgur.com/b9DKaqy.jpg')
  Group.create(name: 'Concerts & Performances', description: 'Who/s in town?', image_url: 'https://i.imgur.com/1TDNIHr.jpg')
  Group.create(name: 'Shopping', description: 'How many ways can I blow my money?', image_url: 'https://i.imgur.com/V0air8j.jpg')
  Group.create(name: 'Dining', description: 'You had me at BBQ!', image_url: 'https://i.imgur.com/HGBW6yy.jpg')
  Group.create(name: 'Sporting Events & Tournaments', description: 'Football, golf and, why not?...pickleball', image_url: 'https://i.imgur.com/AyWt40h.jpg')


Group.all.each do |team|
  team.users = User.all.sample(2)
end