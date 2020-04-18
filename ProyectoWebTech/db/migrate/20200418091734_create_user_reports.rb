class CreateUserReports < ActiveRecord::Migration[6.0]
  def change
    create_table :user_reports do |t|
      t.text :message

      t.timestamps
    end
  end
end
