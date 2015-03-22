class CoursePackage < ActiveRecord::Base

	has_many :course_modules

	has_many :course_course_packages
	has_many :courses, 					through: :course_course_packages

end
