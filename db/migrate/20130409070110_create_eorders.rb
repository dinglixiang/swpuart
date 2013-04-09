class CreateEorders < ActiveRecord::Migration
  def change
    create_table :eorders do |t|
      t.string :eapplicant
      t.string :etel
      t.string :eusetime
      t.string :eusereason
      t.string :eartopinion
      t.string :ereturntime
      t.string :esituation
      t.string :ekeeper

      t.timestamps
    end
  end
end
