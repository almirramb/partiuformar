class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :registration
      t.integer :year_registration
      t.float :ira

      t.timestamps null: false
    end
  end
end
