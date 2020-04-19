class AddUserToEventFileReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_file_reports, :user, null: true, foreign_key: true
  end
end
