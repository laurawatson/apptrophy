json.extract! create_image, :id, :file, :view_count, :user_id, :created_at, :updated_at
json.url create_image_url(create_image, format: :json)
