class AddEorderIdToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :eorder_id, :integer
  end
end
