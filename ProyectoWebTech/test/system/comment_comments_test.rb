require "application_system_test_case"

class CommentCommentsTest < ApplicationSystemTestCase
  setup do
    @comment_comment = comment_comments(:one)
  end

  test "visiting the index" do
    visit comment_comments_url
    assert_selector "h1", text: "Comment Comments"
  end

  test "creating a Comment comment" do
    visit comment_comments_url
    click_on "New Comment Comment"

    click_on "Create Comment comment"

    assert_text "Comment comment was successfully created"
    click_on "Back"
  end

  test "updating a Comment comment" do
    visit comment_comments_url
    click_on "Edit", match: :first

    click_on "Update Comment comment"

    assert_text "Comment comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment comment" do
    visit comment_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment comment was successfully destroyed"
  end
end
