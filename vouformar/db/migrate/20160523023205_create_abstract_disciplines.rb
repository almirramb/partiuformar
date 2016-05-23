class CreateAbstractDisciplines < ActiveRecord::Migration
  def change
    create_table :abstract_disciplines do |t|
      t.integer :codeDiscipline
      t.string :nameDiscipline
      t.string :description
      t.integer :credits

      t.timestamps null: false
    end
  end
end
