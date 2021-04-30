class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.string :number
      t.integer :amount
      t.string :provider
      t.string :customer

      t.timestamps
    end
  end
end
