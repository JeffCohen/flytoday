json.array!(@flights) do |flight|
  json.extract! flight, :id, :airline, :departure_code, :airport_code, :flies_at
  json.url flight_url(flight, format: :json)
end
