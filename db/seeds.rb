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
  ["pizza", "Super-rrrific", "Our homemade sauce, mozzarella cheese, pepperoni, mushrooms, onions, green peppers and Italian sausage.", asset_url('app/assets/images/placeholder_menu_image.png')],
  ["pizza", "Veggie-rrrific", "Our homemade sauce, mozzarella cheese, mushrooms, onions, green peppers, black olives, tomatoes, fresh garlic and sprinkled with our special herb oil.", asset_url('app/assets/images/placeholder_menu_image.png')]
  ]

Menu_item_list.each do |category, name, description, image|
  MenuItem.create(category: category, name: name, description: description, image: File.open( File.join(Rails.root, image)))
end