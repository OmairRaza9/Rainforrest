class Product < ApplicationRecord
  validates :price, numericality: { only_integer: true}
  validates :name, :discription, :price, presence: true
  
end
