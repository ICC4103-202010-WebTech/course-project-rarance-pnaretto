class EventFile < ApplicationRecord
  belongs_to :event
  has_many :event_file_reports
end
