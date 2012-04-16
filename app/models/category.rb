class Category < ActiveRecord::Base

  has_many :projects, :dependent => :destroy
  
  has_many :pictures, :through => :projects

  order_collection_by :position, :asc

  scope :displayable, where(:display => true)
end
