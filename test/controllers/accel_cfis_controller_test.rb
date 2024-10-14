require "test_helper"

class AccelCfisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accel_cfi = accel_cfis(:one)
  end

  test "should get index" do
    get accel_cfis_url
    assert_response :success
  end

  test "should get new" do
    get new_accel_cfi_url
    assert_response :success
  end

  test "should create accel_cfi" do
    assert_difference("AccelCfi.count") do
      post accel_cfis_url, params: { accel_cfi: { email: @accel_cfi.email, name: @accel_cfi.name, phone: @accel_cfi.phone } }
    end

    assert_redirected_to accel_cfi_url(AccelCfi.last)
  end

  test "should show accel_cfi" do
    get accel_cfi_url(@accel_cfi)
    assert_response :success
  end

  test "should get edit" do
    get edit_accel_cfi_url(@accel_cfi)
    assert_response :success
  end

  test "should update accel_cfi" do
    patch accel_cfi_url(@accel_cfi), params: { accel_cfi: { email: @accel_cfi.email, name: @accel_cfi.name, phone: @accel_cfi.phone } }
    assert_redirected_to accel_cfi_url(@accel_cfi)
  end

  test "should destroy accel_cfi" do
    assert_difference("AccelCfi.count", -1) do
      delete accel_cfi_url(@accel_cfi)
    end

    assert_redirected_to accel_cfis_url
  end
end
