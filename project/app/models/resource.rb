# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Resource < ApplicationRecord
	has_many :users
end
