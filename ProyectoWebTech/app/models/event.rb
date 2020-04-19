class Event < ApplicationRecord
  belongs_to :user
  has_many :event_invitations
  has_many :event_dates
  has_many :date_notifications
  has_many :event_reports
  has_many :event_comments
  has_many :event_files
  has_many :organization_event
end
