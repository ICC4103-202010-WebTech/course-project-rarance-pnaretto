class AddMessageToEventCommentReports < ActiveRecord::Migration[6.0]
  def change
    add_column :event_comment_reports, :message, :string
  end
end
