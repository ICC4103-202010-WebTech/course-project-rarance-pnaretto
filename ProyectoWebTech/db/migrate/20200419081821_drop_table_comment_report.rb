class DropTableCommentReport < ActiveRecord::Migration[6.0]
  def change
    drop_table(:comment_reports)
  end
end
