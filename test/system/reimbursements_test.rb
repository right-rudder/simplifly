require "application_system_test_case"

class ReimbursementsTest < ApplicationSystemTestCase
  setup do
    @reimbursement = reimbursements(:one)
  end

  test "visiting the index" do
    visit reimbursements_url
    assert_selector "h1", text: "Reimbursements"
  end

  test "should create reimbursement" do
    visit reimbursements_url
    click_on "New reimbursement"

    fill_in "Amount", with: @reimbursement.amount
    fill_in "Entry date", with: @reimbursement.entry_date
    fill_in "First name", with: @reimbursement.first_name
    fill_in "Last name", with: @reimbursement.last_name
    fill_in "Preferred payment", with: @reimbursement.preferred_payment
    fill_in "Upload", with: @reimbursement.upload
    fill_in "Username", with: @reimbursement.username
    click_on "Create Reimbursement"

    assert_text "Reimbursement was successfully created"
    click_on "Back"
  end

  test "should update Reimbursement" do
    visit reimbursement_url(@reimbursement)
    click_on "Edit this reimbursement", match: :first

    fill_in "Amount", with: @reimbursement.amount
    fill_in "Entry date", with: @reimbursement.entry_date
    fill_in "First name", with: @reimbursement.first_name
    fill_in "Last name", with: @reimbursement.last_name
    fill_in "Preferred payment", with: @reimbursement.preferred_payment
    fill_in "Upload", with: @reimbursement.upload
    fill_in "Username", with: @reimbursement.username
    click_on "Update Reimbursement"

    assert_text "Reimbursement was successfully updated"
    click_on "Back"
  end

  test "should destroy Reimbursement" do
    visit reimbursement_url(@reimbursement)
    click_on "Destroy this reimbursement", match: :first

    assert_text "Reimbursement was successfully destroyed"
  end
end
