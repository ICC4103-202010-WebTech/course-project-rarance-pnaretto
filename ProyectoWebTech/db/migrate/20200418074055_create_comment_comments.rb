class CreateCommentComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_comments do |t|
      t.text :message
      t.string :image

      t.timestamps
    end
  end
end
