# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.create!(
  :name => 'Shoestring Fries', :category => 'sides', :price => 5.50, :picture => 'https://www.mantitlement.com/wp-content/uploads/2018/11/homemade-shoestring-french-fries-deep-fry.jpg'
  )

Item.create!(
  :name => 'Tomato Soup', :category => 'sides', :price => 6.00, :picture => 'https://static01.nyt.com/images/2018/09/10/dining/tomato-soup/tomato-soup-articleLarge.jpg'
  )

Item.create!(
  :name => 'Italian Salad', :category => 'starter', :price => 10.00, :picture => 'https://www.onceuponachef.com/images/2019/07/Big-Italian-Salad-760x983.jpg'
  )

Item.create!(
  :name => 'Bruschetta', :category => 'starter', :price => 7.00, :picture => 'https://i.ndtvimg.com/i/2017-09/bruschetta_625x350_71506417841.jpg'
  )

Item.create!(
  :name => 'Beef Ragu with Pappardelle', :category => 'mains', :price => 19.00, :picture => 'http://littlespicejar.com/wp-content/uploads/2016/11/Weekend-Braised-Beef-Ragu-with-Pappardelle-7.jpg'
  )

Item.create!(
  :name => 'Mushroom Risotto', :category => 'mains', :price => 22.00, :picture => 'https://www.simplyrecipes.com/wp-content/uploads/2011/04/mushroom-risotto-horiz-a-1800.jpg'
  )

Item.create!(
  :name => 'Tiramisu', :category => 'desserts', :price => 12.00, :picture => 'https://cdn.sallysbakingaddiction.com/wp-content/uploads/2019/06/homemade-tiramisu-2.jpg'
  )

Item.create!(
  :name => 'Vanilla Panna Cotta', :category => 'desserts', :price => 11.00, :picture => 'https://dfuukapb8h94d.cloudfront.net/wp-content/uploads/2015/06/05200917/Vanilla-Panna-Cotta-WEB.jpg'
  )

Item.create!(
  :name => 'Sangria', :category => 'drinks', :price => 8.00, :picture => 'https://craftybartending.com/wp-content/uploads/2018/04/Sangria-cocktail.jpg'
  )

Item.create!(
  :name => 'Lemonade', :category => 'drinks', :price => 6.00, :picture => 'https://detoxinista.com/wp-content/uploads/2014/07/Basil-Lemonade.jpg'
  )

puts 'Items have been seeded'