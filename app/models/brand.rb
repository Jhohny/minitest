class Brand < ApplicationRecord
	validates :name, presence: true,
					 uniqueness: { case_sensitive: false }
	belongs_to :user
	has_many :products, dependent: :destroy
end
