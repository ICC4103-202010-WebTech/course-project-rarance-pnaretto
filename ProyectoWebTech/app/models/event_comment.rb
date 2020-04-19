class EventComment < ApplicationRecord
  belongs_to :event
  has_many :comment_comments
  has_many :event_comment_reports
end
