module Admin::PagesHelper
  def content_column(record)
    raw record.content
  end
end
