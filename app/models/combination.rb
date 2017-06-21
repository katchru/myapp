class Combination < ApplicationRecord

	belongs_to :aircraft
	
	has_many :orders
	
end
