class CoursePackage < ActiveRecord::Base

	has_many :course_modules

	has_many :course_course_packages
	has_many :courses, 					through: :course_course_packages

	accepts_nested_attributes_for :course_modules, reject_if: lambda { |v| v["title"].blank? }, allow_destroy: :true

	accepts_nested_attributes_for :course_course_packages, reject_if: lambda { |v| v["title"].blank? }, allow_destroy: :true

end