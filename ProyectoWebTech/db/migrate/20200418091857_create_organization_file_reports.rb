class CreateOrganizationFileReports < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_file_reports do |t|
      t.text :message

      t.timestamps
    end
  end
end
