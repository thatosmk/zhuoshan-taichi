require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get dashboard_overview_url
    assert_response :success
  end

  test "should get settings" do
    get dashboard_settings_url
    assert_response :success
  end

  test "should get members" do
    get dashboard_members_url
    assert_response :success
  end

  test "should get blog" do
    get dashboard_blog_url
    assert_response :success
  end

  test "should get calendar" do
    get dashboard_calendar_url
    assert_response :success
  end

end
