class CourseCoursePackage < ActiveRecord::Base

	acts_as_paranoid

	belongs_to :course
	belongs_to :course_package

end
