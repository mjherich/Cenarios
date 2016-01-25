class ApplicantsController < ApplicationController
  
  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # POST /applicants
  def create
    @applicant = Applicant.new(applicant_params)
  end

  # DELETE /applicants/1
  def destroy
    @applicant.destroy
  end
  
  private
  # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:last_name, :first_name, :middle_initial, :street_address, :state, :zip, :phone, :email, :dob, :social_sec, :position, :citizen, :worked_for, :worked_for_when, :felony, :felony_explanation)
    end
end
