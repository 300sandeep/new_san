class CreateAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :allocations do |t|
      t.references :body_location, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
