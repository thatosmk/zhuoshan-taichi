json.extract! taichi_file, :id, :title, :desc, :category, :user_id, :created_at, :updated_at
json.url taichi_file_url(taichi_file, format: :json)
