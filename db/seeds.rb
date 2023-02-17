# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



  User.create(name: 'Chihiro', email: Faker::Internet.email, image_url: 'https://i.ibb.co/jbgBS3D/w-YB9bk-L-Imgur.jpg')
  User.create(name: 'Yubaba', email: Faker::Internet.email, image_url: 'https://i.ibb.co/Lt61DBB/cuo-TYYf-Imgur.jpg')
  User.create(name: 'Kaonashi', email: Faker::Internet.email, image_url: 'https://i.ibb.co/mNBGPk0/Pf-NDeaw-Imgur.jpg')
  User.create(name: 'Satsuki', email: Faker::Internet.email, image_url: 'https://i.ibb.co/Wv2jMdp/t-Wou-Th-D-Imgur.png')
  User.create(name: 'Totoro', email: Faker::Internet.email, image_url: 'https://i.ibb.co/sV2wptb/OHch-Cy-M-Imgur.jpg')
  User.create(name: 'Makkuro', email: Faker::Internet.email, image_url: 'https://i.ibb.co/JtjhmjT/z-DGPs-Ky-Imgur.jpg')
  User.create(name: 'Nekobus', email: Faker::Internet.email, image_url: 'https://i.ibb.co/58kvY0j/Crw1a0-Q-Imgur.jpg')
  User.create(name: 'Kiki', email: Faker::Internet.email, image_url: 'https://i.ibb.co/wyhmh77/ssf2biz-Imgur.jpg')
  User.create(name: 'Jiji', email: Faker::Internet.email, image_url: 'https://i.ibb.co/X5D1kw8/zclutib-Imgur.jpg')
  User.create(name: 'Ashitaka', email: Faker::Internet.email, image_url: 'https://i.ibb.co/CMFK7RP/no0j-Qe5-Imgur.jpg')
  User.create(name: 'Forrest', email: Faker::Internet.email, image_url: 'https://i.ibb.co/gF9RWCc/e-Il-Yj-D2-Imgur.jpg')
  User.create(name: 'Bubba', email: Faker::Internet.email, image_url: 'https://i.ibb.co/C9Y7Skv/d-Fu6-Nf-P-Imgur.jpg')
  User.create(name: 'Morgan', email: Faker::Internet.email, image_url: 'https://i.ibb.co/MgwMbYy/4k5-IS2s-Imgur.jpg')
  User.create(name: 'Tim', email: Faker::Internet.email, image_url: 'https://i.ibb.co/cL8J3Zw/38l-Nvai-Imgur.jpg')



  Group.create(name: 'Sweet Home Alabama', description: 'All things Dixie', image_url: 'https://i.ibb.co/y4x3BrW/Lower-Alabama-Imgur.jpg')
  Group.create(name: 'Beach Life ', description: 'Beach life and events', image_url: 'https://i.ibb.co/fq11rJr/f1sc7ql-Imgur.jpg')
  Group.create(name: 'Fishing & Boating', description: 'Aye, aye! Skipper.', image_url: 'https://i.ibb.co/5rsC1jt/b9-DKaqy-Imgur.jpg')
  Group.create(name: 'Concerts & Performances', description: 'Who/s in town?', image_url: 'https://i.ibb.co/zRxKCBn/1-TDNIHr-Imgur.jpg')
  Group.create(name: 'Shopping', description: 'How many ways can I blow my money?', image_url: 'https://i.ibb.co/9cKjnpY/V0air8j-Imgur.jpg')
  Group.create(name: 'Dining', description: 'You had me at BBQ!', image_url: 'https://i.ibb.co/4VP9YZg/HGBW6yy-Imgur.jpg')
  Group.create(name: 'Sporting Events & Tournaments', description: 'Football, golf and, why not?...pickleball', image_url: 'https://i.ibb.co/R4NswtW/Ay-Wt40h-Imgur.jpg')
  Group.create(name: 'Attractions & Amusement Parks', description: 'Rollercoasters? Indoor Water Parks?', image_url: 'https://i.ibb.co/09sdxNg/x-Ij2rb-M-Imgur.jpg')


Group.all.each do |team|
  team.users = User.all.sample(2)
end