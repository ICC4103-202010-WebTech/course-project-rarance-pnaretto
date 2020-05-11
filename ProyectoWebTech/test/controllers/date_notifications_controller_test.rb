require 'test_helper'

class DateNotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_notification = date_notifications(:one)
  end

  test "should get index" do
    get date_notifications_url
    assert_response :success
  end

  test "should get new" do
    get new_date_notification_url
    assert_response :success
  end

  test "should create date_notification" do
    assert_difference('DateNotification.count') do
      post date_notifications_url, params: { date_notification: {  } }
    end

    assert_redirected_to date_notification_url(DateNotification.last)
  end

  test "should show date_notification" do
    get date_notification_url(@date_notification)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_notification_url(@date_notification)
    assert_response :success
  end

  test "should update date_notification" do
    patch date_notification_url(@date_notification), params: { date_notification: {  } }
    assert_redirected_to date_notification_url(@date_notification)
  end

  test "should destroy date_notification" do
    assert_difference('DateNotification.count', -1) do
      delete date_notification_url(@date_notification)
    end

    assert_redirected_to date_notifications_url
  end
end
