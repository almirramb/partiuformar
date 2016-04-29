class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :percent
      t.string :description
      t.string :name
      t.string :path

      t.timestamps null: false
    end
  end
end
