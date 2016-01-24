class CreatePersonalTransportationInfos < ActiveRecord::Migration
  def change
    create_table :personal_transportation_infos do |t|
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_year
      t.string :vin
      t.string :license_plate
      t.string :driver_license_number
      t.string :state_issued
      t.string :issue_date
      t.string :insurance_company
      t.string :insurance_agent
      t.string :insurance_agent_address
      t.string :liability_coverage
      t.string :traffic_violations
      t.references :applicant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
