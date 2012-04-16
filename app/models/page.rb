class Page < ActiveRecord::Base

  cache_constants :name

  has_attached_file :image,
                    :styles => { :small => "30x30!", :large => "277x513!" },
                    :url => "/system/:attachment/:id/:style/:filename"

  has_attached_file :picture,
                    :styles => { :small => "30x30!", :large => "x60>"},
                    :url => "/system/:attachment/:id/:style/:filename"

  has_attached_file :document,
                    :url => "/system/:attachment/:id/:style/:filename"

  has_attached_file :document_2,
                    :url => "/system/:attachment/:id/:style/:filename"


end
