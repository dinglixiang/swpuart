class Eorder < ActiveRecord::Base
  attr_accessible :ename,:eapplicant, :eartopinion, :ekeeper, :ereturntime, :esituation, :etel, :eusereason, :eusetime,:equipment_id
  validates :ename, :presence => true
  validates :eapplicant, :presence => true
  validates :etel, :presence => true
  validates :eusetime, :presence => true
  validates :eusereason, :presence => true

  #has_many :line_items
  #before_destroy :ensure_not_referenced_by_any_line_item

  # belongs_to :equipment

  private
  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  		return true
  	else
  		errors.add(:base,'11111')
  		return false
  	end
  end
end
