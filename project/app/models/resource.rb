class Resource < ApplicationRecord
	has_many :users
	belongs_to :courses
end
