# -*- encoding : utf-8 -*-
module Admin::CategoriesHelper

  def comment_form_column(record, options)
    text_area record, :comment, :value => record.comment, :name => options[:name], :col => 60, :style => "width:500px;height:200px", :id => options[:id], :class => "#{options[:class]} mce"
  end

  def comment_column(record)
    raw record.comment
  end
end
