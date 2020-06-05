class OrganizationEvent < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :organization, optional: true
end
