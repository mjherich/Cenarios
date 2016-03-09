class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :category
      t.string :name
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
