class AddUserToEventCommentReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_comment_reports, :user, null: true, foreign_key: true
  end
end
