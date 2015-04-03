class CreateCoursePackageInstances < ActiveRecord::Migration
  def change
    create_table :course_package_instances do |t|
      t.integer :course_id
      t.integer :course_package_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end