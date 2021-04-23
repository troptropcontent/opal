class AddBillToLine < ActiveRecord::Migration[6.1]
  def change
    add_reference :lines, :bill, null: false, foreign_key: true
  end
end
