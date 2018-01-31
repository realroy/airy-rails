class Product < ApplicationRecord
  validates :name, presence: true, length: {minimum: 1}
  validates :price, presence: true
  validates :in_stock, presence: true
  belongs_to :order
end
