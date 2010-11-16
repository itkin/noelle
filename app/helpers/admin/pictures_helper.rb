module Admin::PicturesHelper

  def image_column(record)
    image_tag record.image.url(:small), :alt => "", :title => "" 
  end

  def description_form_column(record, options)
    text_area record, :description, :value => record.description, :name => options[:name], :id => options[:id], :class => options[:class]
  end

  def description_column(record)
    raw record.description
  end
end
