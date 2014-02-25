class AddDescriptionToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :description, :text, :default => "update description"
  end
end
