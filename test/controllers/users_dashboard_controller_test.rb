require 'test_helper'

class UsersDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get videos" do
    get users_dashboard_videos_url
    assert_response :success
  end

  test "should get files" do
    get users_dashboard_files_url
    assert_response :success
  end

  test "should get gallery" do
    get users_dashboard_gallery_url
    assert_response :success
  end

  test "should get settings" do
    get users_dashboard_settings_url
    assert_response :success
  end

end
