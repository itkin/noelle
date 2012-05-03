# -*- encoding : utf-8 -*-
module Admin::ImagesHelper

  def thumb_column(record)
    image_tag record.file.url(:small), :alt => "", :title => ""
  end

  def url_column(record)
    url_for( :action => :show, :controller => "/attachments", :only_path => false, :id => record.id)
  end
end
