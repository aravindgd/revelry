class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :owner, index: true
      t.string :name, null: false, default: ''
      t.decimal :price, default: 0.0, precision: 8, scale: 2, null: false
      t.text :description, default: ''

      t.timestamps null: false
    end
    add_foreign_key :articles, :owners
  end
end
