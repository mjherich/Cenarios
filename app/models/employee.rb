class Employee < ActiveRecord::Base
  validates_presence_of :last_name, :first_name, :address, :state, :city, :zip, :email
  validates_inclusion_of :agree_1, :agree_2, in: [true, false]
end
