module Admin::ProjectsHelper

  def pictures_column(record)
    raw record.pictures.collect{|picture| image_column(picture)}.join(' ')
  end

  
end
