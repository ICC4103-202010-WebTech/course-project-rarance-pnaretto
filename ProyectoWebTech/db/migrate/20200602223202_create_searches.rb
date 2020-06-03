class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :userName
      t.string :organization
      t.string :event
      t.string :eventUser
      t.string :eventOrganization

      t.timestamps
    end
  end
end
