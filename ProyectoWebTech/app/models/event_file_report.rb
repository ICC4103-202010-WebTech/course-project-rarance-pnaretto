class EventFileReport < ApplicationRecord
  belongs_to :event_file
  belongs_to :user
end
