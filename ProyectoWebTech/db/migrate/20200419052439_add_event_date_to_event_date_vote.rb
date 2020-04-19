class AddEventDateToEventDateVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_date_votes, :event_date, null: true, foreign_key: true
  end
end
