class Product < ApplicationRecord
  validates :name, presence: true, length: {minimum: 1}
end
