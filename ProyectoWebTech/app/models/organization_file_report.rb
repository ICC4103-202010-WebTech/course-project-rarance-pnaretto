class OrganizationFileReport < ApplicationRecord
  belongs_to :organization_file, optional: true
  belongs_to :user, optional: true
end
