class Picture < ActiveRecord::Base

  has_attached_file :image, :styles => { :small => "30x30!", :thumb => "x55" }

  belongs_to :project

  order_collection_by :position, :asc, :parent => :project

  named_scope :top, where(:top => true)
end
