class AddEnameToEorder < ActiveRecord::Migration
  add_column :eorders, :ename, :string
end
