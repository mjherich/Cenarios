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
    params.require(:employee).permit(
      :last_name,
      :first_name,
      :middle_initial,
      :date,
      :address,
      :apartment_num,
      :city,
      :state,
      :zip,
      :phone,
      :email,
      :start_date,
      :dob,
      :social_sec,
      :position,
      :citizen,
      :authorized,
      :worked_previously,
      :worked_previously_date,
      :felony,
      :felony_explanation,
      :company_1,
      :job_title_1,
      :company_phone_1,
      :supervisor_1,
      :reference_1,
      :from_1,
      :to_1,
      :start_salary_1,
      :end_salary_1,
      :quit_reason_1,
      :company_2,
      :job_title_2,
      :company_phone_2,
      :supervisor_2,
      :reference_2,
      :from_2,
      :to_2,
      :start_salary_2,
      :end_salary_2,
      :quit_reason_2,
      :reference_name_1,
      :relationship_1,
      :relationship_length_1,
      :reference_address_1,
      :reference_phone_1,
      :reference_name_2,
      :relationship_2,
      :relationship_length_2,
      :reference_address_2,
      :reference_phone_2,
      :vehicle_year,
      :vehicle_make,
      :vehicle_model,
      :vehicle_VIN,
      :license_plate_num,
      :drivers_license_num,
      :drivers_license_state,
      :drivers_license_expiration,
      :insurance_company,
      :insurance_effective_date,
      :insurance_expiration_date,
      :insurance_agent_name,
      :insurance_agent_phone,
      :insurance_agent_address,
      :liability_coverage_amount,
      :violation_date_1,
      :violation_1,
      :violation_penalty_1,
      :violation_date_2,
      :violation_2,
      :violation_penalty_2,
      :violation_date_3,
      :violation_3,
      :violation_penalty_3
      ) # Modify this for all Employee instance params
  end
end
