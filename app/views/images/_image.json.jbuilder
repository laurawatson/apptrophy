json.extract! image, :id, :file, :view_count, :user_id, :created_at, :updated_at
json.url image_url(image, format: :json)
