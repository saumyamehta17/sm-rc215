class Article < ActiveRecord::Base
  attr_accessible :content, :name
  scope :start_at, where('name like ?', '%0%' )
end
