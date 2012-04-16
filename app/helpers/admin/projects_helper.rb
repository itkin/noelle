module Admin::ProjectsHelper

  def pictures_column(record)
    raw record.pictures.collect{|picture| image_column(picture)}.join(' ')
  end

  def has_comment_column(record)
    !record.comment.blank?
  end
end
