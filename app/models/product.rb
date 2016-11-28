class Product < ApplicationRecord
	validates :name, presence: true
	validates :user_id, presence: true
	validates :brand_id, presence: true
	validates :price, numericality: { less_than: 100 }
	belongs_to :user
	belongs_to :brand
	before_validation :normalize_name, on: [ :create, :update ]

	protected
    def normalize_name
      self.name = name.downcase.titleize
    end
end
