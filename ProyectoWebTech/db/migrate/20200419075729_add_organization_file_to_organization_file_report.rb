class AddOrganizationFileToOrganizationFileReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :organization_file_reports, :organization_file, null: true, foreign_key: true
  end
end
