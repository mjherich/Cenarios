class AddAgreementsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :agree_1, :boolean
    add_column :employees, :agree_2, :boolean
  end
end
