class CreateEventDatesVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_dates_votes do |t|

      t.timestamps
    end
  end
end
