class CreateProductsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products_tables do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.boolean :available
      t.time :released_at
      t.time :expiry_date
      t.integer :discount
      t.timestamps
    end
  end
end
