class OrganizationFileReport < ApplicationRecord
  belongs_to :organization_file
  belongs_to :user
end
