class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :video
      t.string :slideshow
      t.string :logistics

      t.timestamps null: false
    end
  end
end
