json.extract! room_category, :id, :name, :price, :created_at, :updated_at
json.url room_category_url(room_category, format: :json)