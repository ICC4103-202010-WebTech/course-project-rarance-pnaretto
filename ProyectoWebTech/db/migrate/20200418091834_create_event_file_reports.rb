class CreateEventFileReports < ActiveRecord::Migration[6.0]
  def change
    create_table :event_file_reports do |t|
      t.text :message

      t.timestamps
    end
  end
end
