class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :drawing_number
      t.integer :qty

      t.timestamps
    end
  end
end
