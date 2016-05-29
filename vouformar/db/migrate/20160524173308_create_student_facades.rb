class CreateStudentFacades < ActiveRecord::Migration
  def change
    create_table :student_facades do |t|

      t.timestamps null: false
    end
  end
end
