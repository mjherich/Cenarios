class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.attachment :image
    end
  end
end
