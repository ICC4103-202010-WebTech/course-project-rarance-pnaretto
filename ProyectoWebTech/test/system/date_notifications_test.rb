require "application_system_test_case"

class DateNotificationsTest < ApplicationSystemTestCase
  setup do
    @date_notification = date_notifications(:one)
  end

  test "visiting the index" do
    visit date_notifications_url
    assert_selector "h1", text: "Date Notifications"
  end

  test "creating a Date notification" do
    visit date_notifications_url
    click_on "New Date Notification"

    click_on "Create Date notification"

    assert_text "Date notification was successfully created"
    click_on "Back"
  end

  test "updating a Date notification" do
    visit date_notifications_url
    click_on "Edit", match: :first

    click_on "Update Date notification"

    assert_text "Date notification was successfully updated"
    click_on "Back"
  end

  test "destroying a Date notification" do
    visit date_notifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date notification was successfully destroyed"
  end
end
