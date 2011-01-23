module Admin::PagesHelper
  def content_column(record)
    raw record.content
  end

  def picture_column(record)
    image_tag record.picture.url(:small), :alt => "", :title => ""
  end

end
