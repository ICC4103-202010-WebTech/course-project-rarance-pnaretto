class AddEventCommentToCommentComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comment_comments, :event_comment, null: true, foreign_key: true
  end
end
