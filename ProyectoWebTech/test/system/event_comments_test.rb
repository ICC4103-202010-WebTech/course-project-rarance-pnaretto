require "application_system_test_case"

class EventCommentsTest < ApplicationSystemTestCase
  setup do
    @event_comment = event_comments(:one)
  end

  test "visiting the index" do
    visit event_comments_url
    assert_selector "h1", text: "Event Comments"
  end

  test "creating a Event comment" do
    visit event_comments_url
    click_on "New Event Comment"

    click_on "Create Event comment"

    assert_text "Event comment was successfully created"
    click_on "Back"
  end

  test "updating a Event comment" do
    visit event_comments_url
    click_on "Edit", match: :first

    click_on "Update Event comment"

    assert_text "Event comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Event comment" do
    visit event_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event comment was successfully destroyed"
  end
end
