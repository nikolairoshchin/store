class Product < ApplicationRecord
	validates :sku, presence: true, uniqueness: true
	validates :name, presence: true
	
end
