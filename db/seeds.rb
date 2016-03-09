# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Specials image seed for paperclip
include ActionView::Helpers::AssetTagHelper

# Specials image seed for paperclip
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/1SpecialtyMania.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/2TheBigDeal.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/3TheDoubleDose.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/4TheOneOnOne.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/5TripleThreat.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/6DepressionBuster.jpg'))))

# Menu Items seed
Menu_item_list = [
  # Specialty Pizzas
  ["pizza", "Super-rrrific", "Our homemade sauce, mozzarella cheese, pepperoni, mushrooms, onions, green peppers and Italian sausage.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Veggie-rrrific", "Our homemade sauce, mozzarella cheese, mushrooms, onions, green peppers, black olives, tomatoes, fresh garlic and sprinkled with our special herb oil.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Meat Slammer", "Our homemade sauce, mozzarella cheese, pepperoni, salami, Canadian bacon, ground beef and Italian sausage.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Chicken Garlic", "Marinated chicken strips, green onions, mushrooms, roasted red peppers and tomatoes over a white garlic sauce with mozzarella cheese.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Pesto-rrrific", "Pesto sauce with mozzarella cheese, artichoke hearts, chicken strips, roasted red peppers and tomatoes.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Hawaiian Delight", "Canadian bacon, pineapple tidbits, bacon, red onions and fresh garlic over our special BBQ sauce (BBQ, honey & pineapple) and mozzarella cheese.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Mediterranean Experience", "Olive oil, mozzarella cheese, fresh garlic, chicken strips fused with Italian seasonings, feta cheese, fresh spinach and sundried tomatoes.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Forgettaboutit", "You Can't When You Taste This Delicious Pizza! Large sauce and cheese pizza topped with tasty Italian sausage, sliced red onions and green peppers tossed in olive oil and fresh garlic, lightly sprinkled with crushed red pepper and Parmesean cheese.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Smokey Bourbon BBQ Chicken", "Bourbon BBQ Sauce brushed lightly on crust, topped with whole milk mozzarella cheese, chicken strips, red onions, jalepenños, cheddar and fresh cilantro.", asset_url('app/assets/images/placeholder_menu_image.png')],
  # Sandwiches
  ["sandwich", "Italian Meatball", "7\" Roll, Mozzarella, Meatball and Sauce", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["sandwich", "Philly Cheese Steak", "7\" Roll, Cheddar Cheese, Philly Steak, Bell Peppers, Onions, Fresh Garlic and Olive Oil", asset_url('app/assets/images/placeholder_menu_image.png')],
  # Pasta
  ["pasta", "Bucket Spaghetti", "A bucket of spaghetti with Fred Bread and Marinara", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pasta", "Ravioli", "The description for Ravioli will go here.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pasta", "Rigatoni Alfredo", "The description for Rigatoni Alfredo will go here.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pasta", "Cheese Tortellini", "The description for Cheese Tortellini will go here.", asset_url('app/assets/images/placeholder_menu_image.png')],
  # Salads
  ["salad", "Garden Salad", "Mixed greens with romaine and iceburg lettuce, cucumber, tomato, green bell pepper and red onions, with your choice of salad dressing.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["salad", "Antipasto Salad", "Mixed greens with romaine and iceburg lettuce, cucumber, tomato, green bell pepper, red onions, salami, canadian bacon, black olives and mozzarella, with your choice of salad dressing.", asset_url('app/assets/images/placeholder_menu_image.png')],
  # Sides
  ["side", "Fred Bread", "Eight of our famous bread sticks seasoned with garlic butter and parmesan cheese.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Tony T's Bread", "Eight bread sticks covered in garlic butter, parmesan cheese, mozzarella and pepperoni pieces.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Peno Bread", "Eight bread sticks covered in cheddar cheese, hot sauce, chopped jalepeños , garlic butter and Parmesan cheese.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Cinnamon Bread", "An appetizing description for cinnamon bread.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Garden Salad", "Romaine Lettuce, Spring Mix, Cucumber, Tomato, Green Bell Pepper and Red Onions", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Drinks", "Pepsi, Diet Pepsi, Cherry Pepsi, Root Beer, Mountain Dew, Dr. Pepper, Orange Crush, Sierra Mist", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["side", "Hot & Spicy", "The description for wings will go here.", asset_url('app/assets/images/placeholder_menu_image.png')]
  ]

Menu_item_list.each do |category, name, description, image|
  MenuItem.create(category: category, name: name, description: description, image: File.open( File.join(Rails.root, image)))
end