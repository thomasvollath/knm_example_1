class Pclass < ActiveRecord::Base
  attr_accessible :name, :number

  has_many :products
end
