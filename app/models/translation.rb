class Translation < ActiveRecord::Base

  order_collection_by :position, :asc
  
  has_attached_file :file

  named_scope :displayable, where(:display => true)
  
end
