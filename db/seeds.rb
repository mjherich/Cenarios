# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Specials image seed for paperclip
include ActionView::Helpers::AssetTagHelper

Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/1SpecialtyMania.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/2TheBigDeal.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/3TheDoubleDose.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/4TheOneOnOne.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/5TripleThreat.jpg'))))
Special.create(image: File.open( File.join(Rails.root, asset_url('app/assets/images/specials/6DepressionBuster.jpg'))))