class CommentCommentReport < ApplicationRecord
  belongs_to :comment_comment, optional: true
  belongs_to :user, optional: true
end
