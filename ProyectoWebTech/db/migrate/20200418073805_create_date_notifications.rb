class CreateDateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :date_notifications do |t|

      t.timestamps
    end
  end
end
