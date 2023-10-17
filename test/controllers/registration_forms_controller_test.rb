require "test_helper"

class RegistrationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_form = registration_forms(:one)
  end

  test "should get index" do
    get registration_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_form_url
    assert_response :success
  end

  test "should create registration_form" do
    assert_difference("RegistrationForm.count") do
      post registration_forms_url, params: { registration_form: { certificates_held: @registration_form.certificates_held, city: @registration_form.city, committed: @registration_form.committed, course: @registration_form.course, email: @registration_form.email, emergency_email: @registration_form.emergency_email, emergency_name: @registration_form.emergency_name, emergency_phone: @registration_form.emergency_phone, financed: @registration_form.financed, first_name: @registration_form.first_name, goal: @registration_form.goal, hours_planned: @registration_form.hours_planned, last_name: @registration_form.last_name, phone: @registration_form.phone, state: @registration_form.state, street: @registration_form.street, total_time: @registration_form.total_time, zip: @registration_form.zip } }
    end

    assert_redirected_to registration_form_url(RegistrationForm.last)
  end

  test "should show registration_form" do
    get registration_form_url(@registration_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_form_url(@registration_form)
    assert_response :success
  end

  test "should update registration_form" do
    patch registration_form_url(@registration_form), params: { registration_form: { certificates_held: @registration_form.certificates_held, city: @registration_form.city, committed: @registration_form.committed, course: @registration_form.course, email: @registration_form.email, emergency_email: @registration_form.emergency_email, emergency_name: @registration_form.emergency_name, emergency_phone: @registration_form.emergency_phone, financed: @registration_form.financed, first_name: @registration_form.first_name, goal: @registration_form.goal, hours_planned: @registration_form.hours_planned, last_name: @registration_form.last_name, phone: @registration_form.phone, state: @registration_form.state, street: @registration_form.street, total_time: @registration_form.total_time, zip: @registration_form.zip } }
    assert_redirected_to registration_form_url(@registration_form)
  end

  test "should destroy registration_form" do
    assert_difference("RegistrationForm.count", -1) do
      delete registration_form_url(@registration_form)
    end

    assert_redirected_to registration_forms_url
  end
end
