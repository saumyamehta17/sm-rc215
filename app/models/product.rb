class Product < ActiveRecord::Base
  attr_accessible :name, :price, :visible
  has_many :categories

  #scope :cheaper_than, where('price < ?',price)
  #scope :cheaper_than, lambda {|price| where('price < ?',price) }

  def self.cheaper_than(price)
    where('price < ?',price)
  end

  #place it below than method so that it can find method
  scope :cheap, cheaper_than(11)

end
