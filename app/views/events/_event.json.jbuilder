json.extract! event, :id, :title, :desc, :from, :until, :notes, :created_at, :updated_at
json.url event_url(event, format: :json)
