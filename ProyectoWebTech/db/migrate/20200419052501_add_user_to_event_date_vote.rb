class AddUserToEventDateVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_date_votes, :user, null: true, foreign_key: true
  end
end
