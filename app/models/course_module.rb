class CourseModule < ActiveRecord::Base

	belongs_to :course_package

	has_many :course_course_modules
	has_many :courses, 					through: :course_course_modules
	
end
