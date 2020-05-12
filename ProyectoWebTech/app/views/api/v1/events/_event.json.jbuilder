json.extract! event, :id, :title, :created_at, :updated_at, :title, :ubication, :description, :bannerPhoto, :public, :decition, :min_vote, :start_voting, :finish_voting, :user_id
json.url api_v1_event_url(event, format: :json)
