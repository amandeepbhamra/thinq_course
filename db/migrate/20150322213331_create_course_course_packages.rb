class CreateCourseCoursePackages < ActiveRecord::Migration
  def change
    create_table :course_course_packages do |t|
      t.integer :course_id
      t.integer :course_package_id

      t.timestamps null: false
    end
  end
end
