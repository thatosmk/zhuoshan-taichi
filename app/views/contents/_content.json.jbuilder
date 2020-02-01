json.extract! content, :id, :content_type, :content, :user_id, :created_at, :updated_at
json.url content_url(content, format: :json)
