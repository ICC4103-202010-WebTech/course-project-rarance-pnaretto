class AddEventCommentToEventCommentReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_comment_reports, :event_comment, null: true, foreign_key: true
  end
end
