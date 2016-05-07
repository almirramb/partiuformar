class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.integer :code
      t.string :name
      t.string :description
      t.integer :credits
      t.string :class
      t.integer :period
      t.time :horary
      t.string :local
      t.string :prerequisites

      t.timestamps null: false
    end
  end
end
