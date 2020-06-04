class EventDate < ApplicationRecord
  belongs_to :event, optional: true
  has_many :event_date_votes, dependent: :delete_all
end
