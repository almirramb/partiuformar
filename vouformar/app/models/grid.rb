class Grid < ActiveRecord::Base
	has_many :discipline
	serialize :discipline_id
end
