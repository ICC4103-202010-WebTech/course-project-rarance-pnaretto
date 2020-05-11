require 'test_helper'

class EventDateVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_date_vote = event_date_votes(:one)
  end

  test "should get index" do
    get event_date_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_event_date_vote_url
    assert_response :success
  end

  test "should create event_date_vote" do
    assert_difference('EventDateVote.count') do
      post event_date_votes_url, params: { event_date_vote: {  } }
    end

    assert_redirected_to event_date_vote_url(EventDateVote.last)
  end

  test "should show event_date_vote" do
    get event_date_vote_url(@event_date_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_date_vote_url(@event_date_vote)
    assert_response :success
  end

  test "should update event_date_vote" do
    patch event_date_vote_url(@event_date_vote), params: { event_date_vote: {  } }
    assert_redirected_to event_date_vote_url(@event_date_vote)
  end

  test "should destroy event_date_vote" do
    assert_difference('EventDateVote.count', -1) do
      delete event_date_vote_url(@event_date_vote)
    end

    assert_redirected_to event_date_votes_url
  end
end
