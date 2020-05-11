require "application_system_test_case"

class CommentCommentReportsTest < ApplicationSystemTestCase
  setup do
    @comment_comment_report = comment_comment_reports(:one)
  end

  test "visiting the index" do
    visit comment_comment_reports_url
    assert_selector "h1", text: "Comment Comment Reports"
  end

  test "creating a Comment comment report" do
    visit comment_comment_reports_url
    click_on "New Comment Comment Report"

    click_on "Create Comment comment report"

    assert_text "Comment comment report was successfully created"
    click_on "Back"
  end

  test "updating a Comment comment report" do
    visit comment_comment_reports_url
    click_on "Edit", match: :first

    click_on "Update Comment comment report"

    assert_text "Comment comment report was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment comment report" do
    visit comment_comment_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment comment report was successfully destroyed"
  end
end
