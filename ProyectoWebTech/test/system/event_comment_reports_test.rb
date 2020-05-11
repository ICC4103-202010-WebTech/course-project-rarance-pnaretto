require "application_system_test_case"

class EventCommentReportsTest < ApplicationSystemTestCase
  setup do
    @event_comment_report = event_comment_reports(:one)
  end

  test "visiting the index" do
    visit event_comment_reports_url
    assert_selector "h1", text: "Event Comment Reports"
  end

  test "creating a Event comment report" do
    visit event_comment_reports_url
    click_on "New Event Comment Report"

    click_on "Create Event comment report"

    assert_text "Event comment report was successfully created"
    click_on "Back"
  end

  test "updating a Event comment report" do
    visit event_comment_reports_url
    click_on "Edit", match: :first

    click_on "Update Event comment report"

    assert_text "Event comment report was successfully updated"
    click_on "Back"
  end

  test "destroying a Event comment report" do
    visit event_comment_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event comment report was successfully destroyed"
  end
end
