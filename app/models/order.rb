class Order < ApplicationRecord
  belongs_to :invoice
  has_many :products
end
