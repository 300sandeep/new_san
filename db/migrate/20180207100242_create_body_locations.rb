class CreateBodyLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :body_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
