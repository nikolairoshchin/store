class Warehouse < ApplicationRecord
	validates :name, presence: true, uniqueness: true
end
