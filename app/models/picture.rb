# -*- encoding : utf-8 -*-
class Picture < ActiveRecord::Base

  has_attached_file :image,
                    :styles => { :small => "30x30!", :thumb => "x55" },
                    :url => "/system/:attachment/:id/:style/:filename"

  belongs_to :project

  order_collection_by :position, :asc, :parent => :project

  scope :top, where(:top => true)
end
