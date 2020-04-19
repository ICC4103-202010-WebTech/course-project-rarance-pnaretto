class EventDate < ApplicationRecord
  belongs_to :event
  has_many :event_date_votes
end
