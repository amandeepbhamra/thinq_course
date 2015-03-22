class CreateCourseCourseModules < ActiveRecord::Migration
  def change
    create_table :course_course_modules do |t|
      t.integer :course_id
      t.integer :course_module_id

      t.timestamps null: false
    end
  end
end
