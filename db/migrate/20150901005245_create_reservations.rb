class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.integer :party_size
      t.datetime :seating_time

      t.timestamps null: false
    end
  end
end
