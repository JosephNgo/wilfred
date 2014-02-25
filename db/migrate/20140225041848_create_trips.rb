class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :session_id
      t.string :date
      t.string :trip_item

      t.timestamps
    end
  end
end
