class Airport < ActiveRecord::Base

  def self.sample
    self.offset(rand(count)).first
  end
end

airport_data = [
  { code: 'ORD', name: "Chicago O'Hare" },
  { code: 'JFK', name: "John F. Kennedy Airport" },
  { code: 'SFO', name: "San Francisco International Airport" },
]

Airport.destroy_all
airport_data.each do |airport|
  Airport.create(airport)
end

airlines = ["United", "American", "Spirit", "Southwest", "JetBlue"]

Flight.destroy_all

300.times do

  departs_from = Airport.sample
  arrives_at = Airport.sample

  Flight.create(airline: airlines.sample, departure_airport_id: departs_from.id,
  arrival_airport_id: arrives_at.id, flies_at: Time.now + (rand(24).hours))

end

puts "There are now #{Flight.count} flights in the database."








