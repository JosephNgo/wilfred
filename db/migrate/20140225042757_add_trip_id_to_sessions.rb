class AddTripIdToSessions < ActiveRecord::Migration
  def change
  	add_column :sessions, :trip_id, :integer, :default => 1
  end
end
