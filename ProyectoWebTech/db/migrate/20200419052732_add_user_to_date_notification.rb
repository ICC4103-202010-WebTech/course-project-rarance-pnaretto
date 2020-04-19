class AddUserToDateNotification < ActiveRecord::Migration[6.0]
  def change
    add_reference :date_notifications, :user, null: true, foreign_key: true
  end
end
