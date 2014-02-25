json.array!(@trips) do |trip|
  json.extract! trip, :id, :session_id, :date, :trip_item
  json.url trip_url(trip, format: :json)
end
