require "application_system_test_case"

class ClubsTest < ApplicationSystemTestCase
  setup do
    @club = clubs(:one)
  end

  test "visiting the index" do
    visit clubs_url
    assert_selector "h1", text: "Clubs"
  end

  test "creating a Club" do
    visit clubs_url
    click_on "New Club"

    fill_in "About", with: @club.about
    fill_in "Class times", with: @club.class_times
    fill_in "Coach bio", with: @club.coach_bio
    fill_in "Coach name", with: @club.coach_name
    fill_in "Contacts", with: @club.contacts
    fill_in "Dress code", with: @club.dress_code
    fill_in "Facebook", with: @club.facebook
    fill_in "History", with: @club.history
    fill_in "Instagram", with: @club.instagram
    fill_in "Youtube", with: @club.youtube
    click_on "Create Club"

    assert_text "Club was successfully created"
    click_on "Back"
  end

  test "updating a Club" do
    visit clubs_url
    click_on "Edit", match: :first

    fill_in "About", with: @club.about
    fill_in "Class times", with: @club.class_times
    fill_in "Coach bio", with: @club.coach_bio
    fill_in "Coach name", with: @club.coach_name
    fill_in "Contacts", with: @club.contacts
    fill_in "Dress code", with: @club.dress_code
    fill_in "Facebook", with: @club.facebook
    fill_in "History", with: @club.history
    fill_in "Instagram", with: @club.instagram
    fill_in "Youtube", with: @club.youtube
    click_on "Update Club"

    assert_text "Club was successfully updated"
    click_on "Back"
  end

  test "destroying a Club" do
    visit clubs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Club was successfully destroyed"
  end
end
