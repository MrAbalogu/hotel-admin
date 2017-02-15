json.extract! reservation, :id, :name, :phone_number, :email, :check_in, :check_out, :room_type, :people, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
