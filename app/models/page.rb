class Page < ActiveRecord::Base

  cache_constants :name

  has_attached_file :image, :styles => { :small => "30x30!", :large => "277x513!" }

end
