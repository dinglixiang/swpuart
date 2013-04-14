class AddEquipmentIdToEorder < ActiveRecord::Migration
  def change
    add_column :eorders, :equipment_id, :integer
  end
end
