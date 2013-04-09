class AddToVideos < ActiveRecord::Migration
  add_column :videos, :avatar, :string
end
