class Product < ApplicationRecord
  validates :name, presence: true, length: {minimum: 1}
  belongs_to :order, :dependent => :destroy
end
