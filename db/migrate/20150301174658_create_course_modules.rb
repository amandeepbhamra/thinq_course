class CreateCourseModules < ActiveRecord::Migration
  def change
    create_table :course_modules do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :audio
      t.string :video
      t.string :slideshow
      t.string :slideshow

      t.timestamps null: false
    end
  end
end
