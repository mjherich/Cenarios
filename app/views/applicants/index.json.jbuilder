json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :last_name, :first_name, :middle_initial, :street_address, :state, :zip, :phone, :email, :dob, :social_sec, :position, :citizen, :worked_for, :worked_for_when, :felony, :felony_explanation
  json.url applicant_url(applicant, format: :json)
end
