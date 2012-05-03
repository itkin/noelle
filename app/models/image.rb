# -*- encoding : utf-8 -*-
class Image < Attachment

  has_attached_file :file,
                    :styles => {:small => "30x30!"},
                    :url => "/system/:attachment/:id/:style/:filename"
end
