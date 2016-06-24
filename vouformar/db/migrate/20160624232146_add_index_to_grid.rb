class AddIndexToGrid < ActiveRecord::Migration
  def change
    add_column :grids, :discipline_id, :integer, array: true, default: []
  end
end