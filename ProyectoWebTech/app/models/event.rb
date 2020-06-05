class Event < ApplicationRecord

  has_one_attached :event_banner_photo, dependent: :delete_all

  belongs_to :user, optional: true
  has_many :event_invitations , dependent: :delete_all
  has_many :event_dates , dependent: :delete_all
  has_many :date_notifications , dependent: :delete_all
  has_many :event_reports , dependent: :delete_all
  has_many :event_comments , dependent: :delete_all
  has_many :event_files , dependent: :delete_all
  has_many :organization_event , dependent: :delete_all

  accepts_nested_attributes_for :event_dates, allow_destroy: true

  validates :title, :description, :ubication, presence: true
end
