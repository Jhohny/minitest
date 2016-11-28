class Brand < ApplicationRecord
	validates :name, presence: true,
					 uniqueness: { case_sensitive: false }
	belongs_to :user
	has_many :products, dependent: :destroy
	before_validation :normalize_name, on: [ :create, :update ]

	protected
    def normalize_name
      self.name = name.downcase.titleize
    end
end
