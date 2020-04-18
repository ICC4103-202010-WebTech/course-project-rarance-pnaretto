class CreateCommentCommentReports < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_comment_reports do |t|
      t.text :message

      t.timestamps
    end
  end
end
