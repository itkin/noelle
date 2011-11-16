class Translation < Attachment

  order_collection_by :position, :asc
  
  named_scope :displayable, where(:display => true)
  
end
