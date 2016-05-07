class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :registration
      t.string :name
      t.string :last_name
      t.integer :current_semester
      t.integer :year_registration
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
