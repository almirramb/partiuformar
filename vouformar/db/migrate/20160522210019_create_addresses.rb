class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :public_place
      t.string :uf
      t.string :city

      t.timestamps null: false
    end

    add_reference :addresses, :user, :index => true
  end
end
