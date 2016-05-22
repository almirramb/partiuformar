class AbstractCourse < ActiveRecord::Base
	has_many :courses
	has_many :emphasis

end
