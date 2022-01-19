class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :supplier_id
      t.integer :quantity
      t.timestamps
    end
  end
end
