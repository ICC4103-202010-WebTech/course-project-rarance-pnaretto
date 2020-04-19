class AddCommentCommentToCommentCommentReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :comment_comment_reports, :comment_comment, null: true, foreign_key: true
  end
end
