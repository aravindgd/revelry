class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :owner, index: true
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :articles, :owners
  end
end
