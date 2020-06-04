class EventFileReport < ApplicationRecord
  belongs_to :event_file, optional: true
  belongs_to :user, optional: true
end
