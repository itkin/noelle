module Admin::ProjectsHelper

  def pictures_column(record)
    raw record.pictures(:limit => 10).collect{|picture| image_column(picture)}.join(' ')
  end

  
end
