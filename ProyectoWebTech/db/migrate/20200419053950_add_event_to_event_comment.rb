class AddEventToEventComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_comments, :event, null: true, foreign_key: true
  end
end
