class CreateSessionItems < ActiveRecord::Migration
  def change
    create_table :session_items do |t|
      t.integer :item_id
      t.integer :session_id
      t.integer :session_qty
      t.text :note

      t.timestamps
    end
  end
end
