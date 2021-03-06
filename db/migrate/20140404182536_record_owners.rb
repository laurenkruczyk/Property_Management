class RecordOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :company
      t.integer :building_id, null: false
      t.timestamps
    end
    add_index :owners, :email, unique: true, :building_id
  end
end
