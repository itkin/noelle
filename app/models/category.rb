class Category < ActiveRecord::Base

  has_many :projects
  
  has_many :pictures, :through => :projects

  order_collection_by :position, :asc

  named_scope :displayable, where(:display => true)
end
