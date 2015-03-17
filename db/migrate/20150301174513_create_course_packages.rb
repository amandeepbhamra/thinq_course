class CreateCoursePackages < ActiveRecord::Migration
  def change
    create_table :course_packages do |t|
      t.string :title
      t.text :description
      t.string :video
      t.string :slideshow

      t.timestamps null: false
    end
  end
end
