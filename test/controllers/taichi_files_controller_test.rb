require 'test_helper'

class TaichiFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taichi_file = taichi_files(:one)
  end

  test "should get index" do
    get taichi_files_url
    assert_response :success
  end

  test "should get new" do
    get new_taichi_file_url
    assert_response :success
  end

  test "should create taichi_file" do
    assert_difference('TaichiFile.count') do
      post taichi_files_url, params: { taichi_file: { category: @taichi_file.category, desc: @taichi_file.desc, title: @taichi_file.title, user_id: @taichi_file.user_id } }
    end

    assert_redirected_to taichi_file_url(TaichiFile.last)
  end

  test "should show taichi_file" do
    get taichi_file_url(@taichi_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_taichi_file_url(@taichi_file)
    assert_response :success
  end

  test "should update taichi_file" do
    patch taichi_file_url(@taichi_file), params: { taichi_file: { category: @taichi_file.category, desc: @taichi_file.desc, title: @taichi_file.title, user_id: @taichi_file.user_id } }
    assert_redirected_to taichi_file_url(@taichi_file)
  end

  test "should destroy taichi_file" do
    assert_difference('TaichiFile.count', -1) do
      delete taichi_file_url(@taichi_file)
    end

    assert_redirected_to taichi_files_url
  end
end
