class Image < Attachment

  has_attached_file :file, :styles => {:small => "30x30!"}
end
