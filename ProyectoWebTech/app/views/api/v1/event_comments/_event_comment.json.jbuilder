json.extract! event_comment, :id, :created_at, :updated_at, :message, :image, :created_at, :event_id, :user_id
json.url api_v1_event_comment_url(event_comment, format: :json)
