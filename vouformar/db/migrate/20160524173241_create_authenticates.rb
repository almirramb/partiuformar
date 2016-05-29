class CreateAuthenticates < ActiveRecord::Migration
  def change
    create_table :authenticates do |t|

      t.timestamps null: false
    end
  end
end
