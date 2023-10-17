require "application_system_test_case"

class RegistrationFormsTest < ApplicationSystemTestCase
  setup do
    @registration_form = registration_forms(:one)
  end

  test "visiting the index" do
    visit registration_forms_url
    assert_selector "h1", text: "Registration forms"
  end

  test "should create registration form" do
    visit registration_forms_url
    click_on "New registration form"

    fill_in "Certificates held", with: @registration_form.certificates_held
    fill_in "City", with: @registration_form.city
    check "Committed" if @registration_form.committed
    fill_in "Course", with: @registration_form.course
    fill_in "Email", with: @registration_form.email
    fill_in "Emergency email", with: @registration_form.emergency_email
    fill_in "Emergency name", with: @registration_form.emergency_name
    fill_in "Emergency phone", with: @registration_form.emergency_phone
    fill_in "Financed", with: @registration_form.financed
    fill_in "First name", with: @registration_form.first_name
    fill_in "Goal", with: @registration_form.goal
    fill_in "Hours planned", with: @registration_form.hours_planned
    fill_in "Last name", with: @registration_form.last_name
    fill_in "Phone", with: @registration_form.phone
    fill_in "State", with: @registration_form.state
    fill_in "Street", with: @registration_form.street
    fill_in "Total time", with: @registration_form.total_time
    fill_in "Zip", with: @registration_form.zip
    click_on "Create Registration form"

    assert_text "Registration form was successfully created"
    click_on "Back"
  end

  test "should update Registration form" do
    visit registration_form_url(@registration_form)
    click_on "Edit this registration form", match: :first

    fill_in "Certificates held", with: @registration_form.certificates_held
    fill_in "City", with: @registration_form.city
    check "Committed" if @registration_form.committed
    fill_in "Course", with: @registration_form.course
    fill_in "Email", with: @registration_form.email
    fill_in "Emergency email", with: @registration_form.emergency_email
    fill_in "Emergency name", with: @registration_form.emergency_name
    fill_in "Emergency phone", with: @registration_form.emergency_phone
    fill_in "Financed", with: @registration_form.financed
    fill_in "First name", with: @registration_form.first_name
    fill_in "Goal", with: @registration_form.goal
    fill_in "Hours planned", with: @registration_form.hours_planned
    fill_in "Last name", with: @registration_form.last_name
    fill_in "Phone", with: @registration_form.phone
    fill_in "State", with: @registration_form.state
    fill_in "Street", with: @registration_form.street
    fill_in "Total time", with: @registration_form.total_time
    fill_in "Zip", with: @registration_form.zip
    click_on "Update Registration form"

    assert_text "Registration form was successfully updated"
    click_on "Back"
  end

  test "should destroy Registration form" do
    visit registration_form_url(@registration_form)
    click_on "Destroy this registration form", match: :first

    assert_text "Registration form was successfully destroyed"
  end
end
