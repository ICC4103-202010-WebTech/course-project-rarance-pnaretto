class EventFile < ApplicationRecord
  belongs_to :event, optional: true
  has_many :event_file_reports , dependent: :delete_all
end
