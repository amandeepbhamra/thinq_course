class AddColumnCoursePackageIdToCourseModules < ActiveRecord::Migration
  def change
    add_column :course_modules, :course_package_id, :integer
  end
end
