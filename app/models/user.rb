class User < ActiveRecord::Base

	acts_as_paranoid
	
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	has_many :course_instances
	has_many :course_package_instances

	has_many :course_module_instances

	ROLES = { 0 => 'Admin', 1 => 'Learner', 2 => 'Guest' }
	
end
