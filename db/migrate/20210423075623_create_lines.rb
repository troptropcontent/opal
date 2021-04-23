class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.string :product
      t.integer :quantity
      t.integer :unit_price_cents
      t.integer :total_cents

      t.timestamps
    end
  end
end
