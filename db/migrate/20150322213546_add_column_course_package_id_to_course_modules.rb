class AddColumnCoursePackageIdToCourseModules < ActiveRecord::Migration
  def change
    add_column :course_modules, :course_module_id, :integer
  end
end
