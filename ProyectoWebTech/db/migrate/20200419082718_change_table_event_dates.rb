class ChangeTableEventDates < ActiveRecord::Migration[6.0]
  def change
    remove_column(:event_dates, :datetime, :string)
    change_column(:event_dates, :date, :datetime)
  end
end
