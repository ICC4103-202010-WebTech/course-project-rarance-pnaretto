class Organization < ApplicationRecord
  has_many :users
  has_many :organization_members
  has_many :organization_files
end
