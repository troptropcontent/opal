class Bill < ApplicationRecord
  has_many :lines
  has_one :qr
end
