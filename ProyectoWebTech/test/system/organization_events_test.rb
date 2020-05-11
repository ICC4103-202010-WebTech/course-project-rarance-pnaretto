require "application_system_test_case"

class OrganizationEventsTest < ApplicationSystemTestCase
  setup do
    @organization_event = organization_events(:one)
  end

  test "visiting the index" do
    visit organization_events_url
    assert_selector "h1", text: "Organization Events"
  end

  test "creating a Organization event" do
    visit organization_events_url
    click_on "New Organization Event"

    click_on "Create Organization event"

    assert_text "Organization event was successfully created"
    click_on "Back"
  end

  test "updating a Organization event" do
    visit organization_events_url
    click_on "Edit", match: :first

    click_on "Update Organization event"

    assert_text "Organization event was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization event" do
    visit organization_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization event was successfully destroyed"
  end
end
