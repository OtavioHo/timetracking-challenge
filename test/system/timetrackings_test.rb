require "application_system_test_case"

class TimetrackingsTest < ApplicationSystemTestCase
  setup do
    @timetracking = timetrackings(:one)
  end

  test "visiting the index" do
    visit timetrackings_url
    assert_selector "h1", text: "Timetrackings"
  end

  test "creating a Timetracking" do
    visit timetrackings_url
    click_on "New Timetracking"

    fill_in "Latitude", with: @timetracking.latitude
    fill_in "Longitude", with: @timetracking.longitude
    click_on "Create Timetracking"

    assert_text "Timetracking was successfully created"
    click_on "Back"
  end

  test "updating a Timetracking" do
    visit timetrackings_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @timetracking.latitude
    fill_in "Longitude", with: @timetracking.longitude
    click_on "Update Timetracking"

    assert_text "Timetracking was successfully updated"
    click_on "Back"
  end

  test "destroying a Timetracking" do
    visit timetrackings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Timetracking was successfully destroyed"
  end
end
