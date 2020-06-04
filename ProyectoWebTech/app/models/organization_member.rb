class OrganizationMember < ApplicationRecord
  belongs_to :organization, optional: true
  belongs_to :user, optional: true
end
