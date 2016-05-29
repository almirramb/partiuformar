class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.integer :code
      t.string :name
      t.string :prerequisites

      t.timestamps null: false
    end
  end
end
