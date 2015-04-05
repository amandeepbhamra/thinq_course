class CoursePackage < ActiveRecord::Base

	acts_as_paranoid

	has_many :course_modules

	has_many :course_course_packages
	has_many :courses, 					through: :course_course_packages

	has_many :course_package_instances
	has_many :course_module_instances

	accepts_nested_attributes_for :course_modules, reject_if: lambda { |v| v["title"].blank? }, allow_destroy: :true

	accepts_nested_attributes_for :course_course_packages, reject_if: lambda { |v| v["title"].blank? }, allow_destroy: :true

end