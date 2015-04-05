class CourseModule < ActiveRecord::Base

	acts_as_paranoid

	belongs_to :course_package

	has_many :course_course_modules
	has_many :courses, 					through: :course_course_modules

	has_many :course_module_instances
	
end
