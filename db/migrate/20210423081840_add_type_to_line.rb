class AddTypeToLine < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :type, :string
  end
end
