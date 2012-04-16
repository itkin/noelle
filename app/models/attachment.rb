class Attachment < ActiveRecord::Base

  has_attached_file :file,
                    :url => "/system/:attachment/:id/:style/:filename"

end
