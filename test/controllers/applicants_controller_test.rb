require 'test_helper'

class ApplicantsControllerTest < ActionController::TestCase
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applicants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post :create, applicant: { citizen: @applicant.citizen, dob: @applicant.dob, email: @applicant.email, felony: @applicant.felony, felony_explanation: @applicant.felony_explanation, first_name: @applicant.first_name, last_name: @applicant.last_name, middle_initial: @applicant.middle_initial, phone: @applicant.phone, position: @applicant.position, social_sec: @applicant.social_sec, state: @applicant.state, street_address: @applicant.street_address, worked_for: @applicant.worked_for, worked_for_when: @applicant.worked_for_when, zip: @applicant.zip }
    end

    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should show applicant" do
    get :show, id: @applicant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applicant
    assert_response :success
  end

  test "should update applicant" do
    patch :update, id: @applicant, applicant: { citizen: @applicant.citizen, dob: @applicant.dob, email: @applicant.email, felony: @applicant.felony, felony_explanation: @applicant.felony_explanation, first_name: @applicant.first_name, last_name: @applicant.last_name, middle_initial: @applicant.middle_initial, phone: @applicant.phone, position: @applicant.position, social_sec: @applicant.social_sec, state: @applicant.state, street_address: @applicant.street_address, worked_for: @applicant.worked_for, worked_for_when: @applicant.worked_for_when, zip: @applicant.zip }
    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete :destroy, id: @applicant
    end

    assert_redirected_to applicants_path
  end
end
