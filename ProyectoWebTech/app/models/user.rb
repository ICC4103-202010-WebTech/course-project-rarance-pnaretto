class User < ApplicationRecord

  has_one_attached :photo

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

  validates :email, :name, :password, presence: true
  validates :email, uniqueness: true
  #https://github.com/micke/valid_email2
  validates :email,'valid_email_2/email': true

end
