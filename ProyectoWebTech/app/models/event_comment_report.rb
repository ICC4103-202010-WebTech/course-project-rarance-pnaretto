class EventCommentReport < ApplicationRecord
  belongs_to :event_comment
  belongs_to :user
end
