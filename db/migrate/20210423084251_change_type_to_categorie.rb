class ChangeTypeToCategorie < ActiveRecord::Migration[6.1]
  change_table :lines do |t|
    t.rename :type, :categorie
  end
  
end
