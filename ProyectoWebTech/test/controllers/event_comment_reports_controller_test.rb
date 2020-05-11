require 'test_helper'

class EventCommentReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_comment_report = event_comment_reports(:one)
  end

  test "should get index" do
    get event_comment_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_event_comment_report_url
    assert_response :success
  end

  test "should create event_comment_report" do
    assert_difference('EventCommentReport.count') do
      post event_comment_reports_url, params: { event_comment_report: {  } }
    end

    assert_redirected_to event_comment_report_url(EventCommentReport.last)
  end

  test "should show event_comment_report" do
    get event_comment_report_url(@event_comment_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_comment_report_url(@event_comment_report)
    assert_response :success
  end

  test "should update event_comment_report" do
    patch event_comment_report_url(@event_comment_report), params: { event_comment_report: {  } }
    assert_redirected_to event_comment_report_url(@event_comment_report)
  end

  test "should destroy event_comment_report" do
    assert_difference('EventCommentReport.count', -1) do
      delete event_comment_report_url(@event_comment_report)
    end

    assert_redirected_to event_comment_reports_url
  end
end
