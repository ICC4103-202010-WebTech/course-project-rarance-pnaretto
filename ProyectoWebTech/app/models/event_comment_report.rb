class EventCommentReport < ApplicationRecord
  belongs_to :event_comment, optional: true
  belongs_to :user, optional: true
end
