class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :client_id, foreign_key: true
      t.integer :clinic_id, foreign_key: true

      t.timestamps
    end
    add_index :members, :client_id
    add_index :members, :clinic_id
  end
end
