require "application_system_test_case"

class TaichiFilesTest < ApplicationSystemTestCase
  setup do
    @taichi_file = taichi_files(:one)
  end

  test "visiting the index" do
    visit taichi_files_url
    assert_selector "h1", text: "Taichi Files"
  end

  test "creating a Taichi file" do
    visit taichi_files_url
    click_on "New Taichi File"

    fill_in "Category", with: @taichi_file.category
    fill_in "Desc", with: @taichi_file.desc
    fill_in "Title", with: @taichi_file.title
    fill_in "User", with: @taichi_file.user_id
    click_on "Create Taichi file"

    assert_text "Taichi file was successfully created"
    click_on "Back"
  end

  test "updating a Taichi file" do
    visit taichi_files_url
    click_on "Edit", match: :first

    fill_in "Category", with: @taichi_file.category
    fill_in "Desc", with: @taichi_file.desc
    fill_in "Title", with: @taichi_file.title
    fill_in "User", with: @taichi_file.user_id
    click_on "Update Taichi file"

    assert_text "Taichi file was successfully updated"
    click_on "Back"
  end

  test "destroying a Taichi file" do
    visit taichi_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taichi file was successfully destroyed"
  end
end
