class ChangeTableNameEventDatesVoteToEventDateVote < ActiveRecord::Migration[6.0]
  def change
    rename_table :event_dates_votes, :event_date_votes
  end
end
