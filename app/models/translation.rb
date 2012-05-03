# -*- encoding : utf-8 -*-
class Translation < Attachment

  order_collection_by :position, :asc
  
  scope :displayable, where(:display => true)
  
end
