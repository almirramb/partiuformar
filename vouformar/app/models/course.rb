class Course < AbstractCourse
	 has_and_belongs_to_many :emphasis
end
