class EventComment < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :comment_comments , dependent: :delete_all
  has_many :event_comment_reports , dependent: :delete_all
end
