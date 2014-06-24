class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :airline
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.time :flies_at

      t.timestamps
    end
  end
end
