class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :ename
      t.string :etype
      t.text :elist
      t.integer :eprice
      t.integer :eremain

      t.timestamps
    end
  end
end
