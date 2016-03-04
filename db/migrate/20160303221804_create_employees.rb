class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      # Employee Information
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.date :date
      t.string :address
      t.string :apartment_num
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      
      t.string :start_date
      t.string :dob
      t.string :social_sec

      t.string :position
      t.boolean :citizen
      t.boolean :authorized
      t.boolean :worked_previously
      t.date :worked_previously_date
      t.boolean :felony
      t.text :felony_explanation

      # Previous Employment
      t.string :company_1
      t.string :job_title_1
      t.string :company_phone_1
      t.string :supervisor_1
      t.boolean :reference_1
      t.date :from_1
      t.date :to_1
      t.string :start_salary_1
      t.string :end_salary_1
      t.string :quit_reason_1

      t.string :company_2
      t.string :job_title_2
      t.string :company_phone_2
      t.string :supervisor_2
      t.boolean :reference_2
      t.date :from_2
      t.date :to_2
      t.string :start_salary_2
      t.string :end_salary_2
      t.string :quit_reason_2

      # References
      t.string :reference_name_1
      t.string :relationship_1
      t.string :relationship_length_1
      t.string :reference_address_1
      t.string :reference_phone_1

      t.string :reference_name_2
      t.string :relationship_2
      t.string :relationship_length_2
      t.string :reference_address_2
      t.string :reference_phone_2

      # Vehicle/Insurance information
      t.string :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.string :vehicle_VIN
      t.string :license_plate_num
      t.string :drivers_license_num
      t.string :drivers_license_state
      t.date :drivers_license_expiration
      t.string :insurance_company
      t.date :insurance_effective_date
      t.date :insurance_expiration_date
      t.string :insurance_agent_name
      t.string :insurance_agent_phone
      t.string :insurance_agent_address
      t.integer :liability_coverage_amount

      # Traffic violations
      t.date :violation_date_1
      t.string :violation_1
      t.string :violation_penalty_1

      t.date :violation_date_2
      t.string :violation_2
      t.string :violation_penalty_2

      t.date :violation_date_3
      t.string :violation_3
      t.string :violation_penalty_3

      t.timestamps null: false
    end
  end
end
