class OrganizationFile < ApplicationRecord
  belongs_to :organization
  has_many :organization_file_reports
end
