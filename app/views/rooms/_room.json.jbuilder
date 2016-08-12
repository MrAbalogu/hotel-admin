json.extract! room, :id, :room_number, :availability, :neatness, :created_at, :updated_at
json.url room_url(room, format: :json)