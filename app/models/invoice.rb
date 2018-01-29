class Invoice < ApplicationRecord
  has_many :orders, :dependent => :destroy
  validates :status, :vat
  validates_associated :orders
end
