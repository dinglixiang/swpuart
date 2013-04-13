class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :rtitle
      t.string :rpublisher
      t.text :rcontent

      t.timestamps
    end
  end
end
