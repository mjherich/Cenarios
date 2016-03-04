class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    
    if @employee.save
    end
  end
  
  private
    def employee_params
      params.require(:employee).permit(:name, :email, :comment) # Modify this for all Employee instance params
    end
end
