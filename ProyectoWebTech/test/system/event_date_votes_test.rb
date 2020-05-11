require "application_system_test_case"

class EventDateVotesTest < ApplicationSystemTestCase
  setup do
    @event_date_vote = event_date_votes(:one)
  end

  test "visiting the index" do
    visit event_date_votes_url
    assert_selector "h1", text: "Event Date Votes"
  end

  test "creating a Event date vote" do
    visit event_date_votes_url
    click_on "New Event Date Vote"

    click_on "Create Event date vote"

    assert_text "Event date vote was successfully created"
    click_on "Back"
  end

  test "updating a Event date vote" do
    visit event_date_votes_url
    click_on "Edit", match: :first

    click_on "Update Event date vote"

    assert_text "Event date vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Event date vote" do
    visit event_date_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event date vote was successfully destroyed"
  end
end
