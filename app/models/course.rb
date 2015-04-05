class Course < ActiveRecord::Base

	acts_as_paranoid
	
	has_many :course_course_modules
	has_many :course_modules, 			through: :course_course_modules

	has_many :course_course_packages
	has_many :course_packages, 			through: :course_course_packages

	has_many :course_instances
	has_many :course_package_instances

	has_many :course_module_instances

end
