class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :username
      t.integer :role

      t.timestamps null: false
    end
  end
end
