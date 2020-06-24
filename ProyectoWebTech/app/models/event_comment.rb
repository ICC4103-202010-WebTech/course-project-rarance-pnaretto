class EventComment < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :user, optional: true
  has_many :comment_comments , dependent: :destroy
  has_many :event_comment_reports , dependent: :delete_all

  has_one_attached :image, dependent: :delete_all
end
