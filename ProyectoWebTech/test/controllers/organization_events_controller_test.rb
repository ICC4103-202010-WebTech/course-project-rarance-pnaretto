require 'test_helper'

class OrganizationEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_event = organization_events(:one)
  end

  test "should get index" do
    get organization_events_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_event_url
    assert_response :success
  end

  test "should create organization_event" do
    assert_difference('OrganizationEvent.count') do
      post organization_events_url, params: { organization_event: {  } }
    end

    assert_redirected_to organization_event_url(OrganizationEvent.last)
  end

  test "should show organization_event" do
    get organization_event_url(@organization_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_event_url(@organization_event)
    assert_response :success
  end

  test "should update organization_event" do
    patch organization_event_url(@organization_event), params: { organization_event: {  } }
    assert_redirected_to organization_event_url(@organization_event)
  end

  test "should destroy organization_event" do
    assert_difference('OrganizationEvent.count', -1) do
      delete organization_event_url(@organization_event)
    end

    assert_redirected_to organization_events_url
  end
end
