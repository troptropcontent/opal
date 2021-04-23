class Bill < ApplicationRecord
  has_many :lines
  has_one :qr

  def serialized
    hash = {
      number: number,
      provider: provider,
      customer: customer,
      amount: amount,
      lines: lines.map{|line| {product: line.product, categorie: line.categorie, quantity: line.quantity, unit_price_cents: line.unit_price_cents }}
    }

    hash.to_json
  end
end
  # create_table "bills", force: :cascade do |t|
  #   t.string "number"
  #   t.integer "amount"
  #   t.string "provider"
  #   t.string "customer"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  # create_table "lines", force: :cascade do |t|
  #   t.string "product"
  #   t.integer "quantity"
  #   t.integer "unit_price_cents"
  #   t.integer "total_cents"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.string "categorie"
  #   t.bigint "bill_id", null: false
  #   t.index ["bill_id"], name: "index_lines_on_bill_id"