class CreateAdminFacades < ActiveRecord::Migration
  def change
    create_table :admin_facades do |t|

      t.timestamps null: false
    end
  end
end
