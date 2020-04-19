class User < ApplicationRecord
  has_many :events
  has_many :event_reports
  has_many :event_invitations
  has_many :event_date_votes
  has_many :date_notifications
  has_many :event_comments
  has_many :event_comment_reports
  has_many :comment_comments
  has_many :comment_comment_reports
  has_many :event_file_reports
  has_many :organizations
  has_many :organization_reports
  has_many :organization_members
  has_many :organization_file_reports
end
