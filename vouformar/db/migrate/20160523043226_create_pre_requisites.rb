class CreatePreRequisites < ActiveRecord::Migration
  def change
    create_table :pre_requisites do |t|

      t.timestamps null: false
    end
  end
end
