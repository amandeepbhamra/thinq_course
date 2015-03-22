class Course < ActiveRecord::Base
	
	has_many :course_course_modules
	has_many :course_modules, 			through: :course_course_modules

	has_many :course_course_packages
	has_many :course_packages, 			through: :course_course_packages

end
