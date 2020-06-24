class CommentComment < ApplicationRecord
  belongs_to :event_comment, optional: true
  belongs_to :user, optional: true
  has_many :comment_comment_reports, dependent: :delete_all

  has_one_attached :image, dependent: :delete_all
end
