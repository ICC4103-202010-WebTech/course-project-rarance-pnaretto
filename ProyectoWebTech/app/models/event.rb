class Event < ApplicationRecord

  has_one_attached :event_banner_photo, dependent: :destroy

  belongs_to :user, optional: true
  has_many :event_invitations , dependent: :destroy
  has_many :event_dates , dependent: :destroy
  has_many :date_notifications , dependent: :destroy
  has_many :event_reports , dependent: :destroy
  has_many :event_comments , dependent: :destroy
  has_many :event_files , dependent: :destroy
  has_many :organization_event , dependent: :destroy

  accepts_nested_attributes_for :event_dates, allow_destroy: true

  validates :title, :description, :ubication, presence: true
end
