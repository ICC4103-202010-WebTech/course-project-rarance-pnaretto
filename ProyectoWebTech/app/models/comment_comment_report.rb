class CommentCommentReport < ApplicationRecord
  belongs_to :comment_comment
  belongs_to :user
end
