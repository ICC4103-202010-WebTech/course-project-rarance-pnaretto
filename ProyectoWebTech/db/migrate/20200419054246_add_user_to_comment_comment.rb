class AddUserToCommentComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comment_comments, :user, null: true, foreign_key: true
  end
end
