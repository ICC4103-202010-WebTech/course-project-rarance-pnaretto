class Event < ApplicationRecord

  has_one_attached :bannerphoto

  belongs_to :user
  has_many :event_invitations
  has_many :event_dates
  has_many :date_notifications
  has_many :event_reports
  has_many :event_comments
  has_many :event_files
  has_many :organization_event

  accepts_nested_attributes_for :event_dates, allow_destroy: true

  validates :title, :description, :ubication, presence: true
end
