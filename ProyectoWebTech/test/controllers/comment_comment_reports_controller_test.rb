require 'test_helper'

class CommentCommentReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_comment_report = comment_comment_reports(:one)
  end

  test "should get index" do
    get comment_comment_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_comment_report_url
    assert_response :success
  end

  test "should create comment_comment_report" do
    assert_difference('CommentCommentReport.count') do
      post comment_comment_reports_url, params: { comment_comment_report: {  } }
    end

    assert_redirected_to comment_comment_report_url(CommentCommentReport.last)
  end

  test "should show comment_comment_report" do
    get comment_comment_report_url(@comment_comment_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_comment_report_url(@comment_comment_report)
    assert_response :success
  end

  test "should update comment_comment_report" do
    patch comment_comment_report_url(@comment_comment_report), params: { comment_comment_report: {  } }
    assert_redirected_to comment_comment_report_url(@comment_comment_report)
  end

  test "should destroy comment_comment_report" do
    assert_difference('CommentCommentReport.count', -1) do
      delete comment_comment_report_url(@comment_comment_report)
    end

    assert_redirected_to comment_comment_reports_url
  end
end
