class EventDateVote < ApplicationRecord
  belongs_to :event_date, optional: true
  belongs_to :user, optional: true
end
