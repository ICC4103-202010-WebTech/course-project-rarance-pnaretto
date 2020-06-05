class OrganizationFile < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :organization_file_reports, optional: true
end
