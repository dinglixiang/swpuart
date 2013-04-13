class CreateSorders < ActiveRecord::Migration
  def change
    create_table :sorders do |t|
      t.string :sapplicant
      t.string :stel
      t.string :susetime
      t.string :susereason
      t.string :sname
      t.string :sopinion
      t.string :sreturntime
      t.string :ssituation
      t.string :skeeper

      t.timestamps
    end
  end
end
