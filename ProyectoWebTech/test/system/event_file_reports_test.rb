require "application_system_test_case"

class EventFileReportsTest < ApplicationSystemTestCase
  setup do
    @event_file_report = event_file_reports(:one)
  end

  test "visiting the index" do
    visit event_file_reports_url
    assert_selector "h1", text: "Event File Reports"
  end

  test "creating a Event file report" do
    visit event_file_reports_url
    click_on "New Event File Report"

    click_on "Create Event file report"

    assert_text "Event file report was successfully created"
    click_on "Back"
  end

  test "updating a Event file report" do
    visit event_file_reports_url
    click_on "Edit", match: :first

    click_on "Update Event file report"

    assert_text "Event file report was successfully updated"
    click_on "Back"
  end

  test "destroying a Event file report" do
    visit event_file_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event file report was successfully destroyed"
  end
end
