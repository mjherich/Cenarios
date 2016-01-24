class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :street_address
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :dob
      t.string :social_sec
      t.string :position
      t.string :citizen
      t.string :worked_for
      t.string :worked_for_when
      t.string :felony
      t.string :felony_explanation

      t.timestamps null: false
    end
  end
end
