class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :category
      t.string :url
      t.string :amount
      t.string :type
      t.string :sets
      t.string :reps
      t.string :description
      t.string :rehab_name
      t.timestamps
    end
  end
end
