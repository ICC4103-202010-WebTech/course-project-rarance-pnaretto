class Organization < ApplicationRecord
  has_one_attached :organization_banner_photo, dependent: :destroy

  has_one_attached :organization_banner_photo, dependent: :delete_all

  belongs_to :user, optional: true

  has_many :organization_members , dependent: :destroy
  has_many :organization_files, dependent: :destroy
  has_many :organization_reports, dependent: :destroy
  has_many :organization_events, dependent: :destroy

end
