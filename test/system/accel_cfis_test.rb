require "application_system_test_case"

class AccelCfisTest < ApplicationSystemTestCase
  setup do
    @accel_cfi = accel_cfis(:one)
  end

  test "visiting the index" do
    visit accel_cfis_url
    assert_selector "h1", text: "Accel cfis"
  end

  test "should create accel cfi" do
    visit accel_cfis_url
    click_on "New accel cfi"

    fill_in "Email", with: @accel_cfi.email
    fill_in "Name", with: @accel_cfi.name
    fill_in "Phone", with: @accel_cfi.phone
    click_on "Create Accel cfi"

    assert_text "Accel cfi was successfully created"
    click_on "Back"
  end

  test "should update Accel cfi" do
    visit accel_cfi_url(@accel_cfi)
    click_on "Edit this accel cfi", match: :first

    fill_in "Email", with: @accel_cfi.email
    fill_in "Name", with: @accel_cfi.name
    fill_in "Phone", with: @accel_cfi.phone
    click_on "Update Accel cfi"

    assert_text "Accel cfi was successfully updated"
    click_on "Back"
  end

  test "should destroy Accel cfi" do
    visit accel_cfi_url(@accel_cfi)
    click_on "Destroy this accel cfi", match: :first

    assert_text "Accel cfi was successfully destroyed"
  end
end
