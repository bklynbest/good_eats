json.extract! restaurant, :id, :name, :image_url, :description, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
