class MenuItem < ActiveRecord::Base
  validates_presence_of :category, :name, :description
  has_attached_file :image, styles: { medium: "300x196>", thumb: "100x66>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
