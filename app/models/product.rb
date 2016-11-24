class Product < ApplicationRecord
	validates :name, presence: true
	validates :user_id, presence: true
	validates :brand_id, presence: true
	validates :price, numericality: { less_than: 100 }
	belongs_to :user
	belongs_to :brand
end
