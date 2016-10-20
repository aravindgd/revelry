class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :owners, :name, unique: true
  end
end
