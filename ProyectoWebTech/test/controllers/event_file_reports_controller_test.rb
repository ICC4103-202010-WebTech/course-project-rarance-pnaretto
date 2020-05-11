require 'test_helper'

class EventFileReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_file_report = event_file_reports(:one)
  end

  test "should get index" do
    get event_file_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_event_file_report_url
    assert_response :success
  end

  test "should create event_file_report" do
    assert_difference('EventFileReport.count') do
      post event_file_reports_url, params: { event_file_report: {  } }
    end

    assert_redirected_to event_file_report_url(EventFileReport.last)
  end

  test "should show event_file_report" do
    get event_file_report_url(@event_file_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_file_report_url(@event_file_report)
    assert_response :success
  end

  test "should update event_file_report" do
    patch event_file_report_url(@event_file_report), params: { event_file_report: {  } }
    assert_redirected_to event_file_report_url(@event_file_report)
  end

  test "should destroy event_file_report" do
    assert_difference('EventFileReport.count', -1) do
      delete event_file_report_url(@event_file_report)
    end

    assert_redirected_to event_file_reports_url
  end
end
