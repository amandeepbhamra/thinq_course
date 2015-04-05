class AddDeletedAtToAllModels < ActiveRecord::Migration
  	def change
  		add_column :courses, :deleted_at, :datetime
  		add_column :course_course_modules, :deleted_at, :datetime
  		add_column :course_course_packages, :deleted_at, :datetime
  		add_column :course_instances, :deleted_at, :datetime
  		add_column :course_modules, :deleted_at, :datetime
  		add_column :course_module_instances, :deleted_at, :datetime
  		add_column :course_packages, :deleted_at, :datetime
  		add_column :course_package_instances, :deleted_at, :datetime
  		add_column :users, :deleted_at, :datetime
    	
    	add_index :courses, :deleted_at
    	add_index :course_course_modules, :deleted_at
    	add_index :course_course_packages, :deleted_at
  		add_index :course_instances, :deleted_at
  		add_index :course_modules, :deleted_at
  		add_index :course_module_instances, :deleted_at
  		add_index :course_packages, :deleted_at
  		add_index :course_package_instances, :deleted_at
  		add_index :users, :deleted_at
  	end
end
