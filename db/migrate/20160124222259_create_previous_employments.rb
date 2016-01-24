class CreatePreviousEmployments < ActiveRecord::Migration
  def change
    create_table :previous_employments do |t|
      t.string :company
      t.string :phone
      t.string :job_title
      t.string :supervisor
      t.string :may_we_contact
      t.references :applicant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
