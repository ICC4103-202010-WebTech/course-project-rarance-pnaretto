class CommentComment < ApplicationRecord
  belongs_to :event_comment
  belongs_to :user
  has_many :comment_comment_reports
end
