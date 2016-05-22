class CreateAbstractCourses < ActiveRecord::Migration
  def change
    create_table :abstract_courses do |t|
      t.string :name
      t.integer :codeCourse

      t.timestamps null: false
    end
  end
end
