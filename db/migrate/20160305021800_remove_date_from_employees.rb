class RemoveDateFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :date, :date
  end
end
