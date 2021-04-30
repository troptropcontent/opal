class CreateQrs < ActiveRecord::Migration[6.1]
  def change
    create_table :qrs do |t|
      t.string :qr_code
      t.string :value
      t.references :bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
