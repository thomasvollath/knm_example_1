class Product < ActiveRecord::Base
  attr_accessible :description, :name, :number, :pclass_id, :pvendor_id

  belongs_to :pclass
  belongs_to :pvendor
end
