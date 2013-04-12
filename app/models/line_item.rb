class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :eorder_id
  belongs_to :eorder
  belongs_to :cart
end
