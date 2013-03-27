class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :sname
      t.text :sdescribe
      t.string :sstate

      t.timestamps
    end
  end
end
