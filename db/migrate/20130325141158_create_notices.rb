class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :ntitle
      t.string :nfilenumber
      t.text :ncontent

      t.timestamps
    end
  end
end
