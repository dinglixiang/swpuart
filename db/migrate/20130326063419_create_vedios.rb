class CreateVedios < ActiveRecord::Migration
  def change
    create_table :vedios do |t|
      t.string :vname

      t.timestamps
    end
  end
end
