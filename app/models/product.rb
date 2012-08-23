class Product < ActiveRecord::Base
  attr_accessible :description, :name, :number, :pclass_id, :pvendor_id
  attr_accessor :quantity, :cost

  belongs_to :pclass
  belongs_to :pvendor

  scope :by_pclass, lambda { |pclass_id| where('pclass_id = ?', pclass_id) }
  scope :by_pvendor, lambda { |pvendor_id| where('pvendor_id = ?', pvendor_id) }
end
