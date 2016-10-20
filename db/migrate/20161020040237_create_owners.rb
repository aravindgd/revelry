class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :owners, :name, unique: true
    add_index :owners, :slug, unique: true
  end
end
