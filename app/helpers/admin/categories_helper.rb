module Admin::CategoriesHelper

  def description_form_column(record, options)
    text_area record, record.description, :name => options[:name], :style => "width:100%;height:100px"
  end
end
