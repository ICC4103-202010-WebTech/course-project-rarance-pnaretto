class Organization < ApplicationRecord
  belongs_to :user, optional: true
  has_many :organization_members
  has_many :organization_files
  has_many :organization_reports
  has_many :organization_events
end
