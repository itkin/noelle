class Project < ActiveRecord::Base

  belongs_to :category
  has_many :pictures, :dependent => :destroy

  order_collection_by :position, :asc, :parent => :category

  named_scope :displayable, where(:display => true)
end
