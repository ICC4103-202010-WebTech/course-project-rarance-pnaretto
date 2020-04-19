class AddEventToOrganizationEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :organization_events, :event, null: true, foreign_key: true
  end
end
