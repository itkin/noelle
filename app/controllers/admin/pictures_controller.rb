class Admin::PicturesController < Admin::ApplicationController

  active_scaffold :pictures do |config|
    config.columns = [:top, :position, :title, :image, :description]
    config.list.columns = [:top, :position, :title, :image]
    config.columns[:top].inplace_edit = config.columns[:title].inplace_edit =  config.columns[:position].inplace_edit = true
  end
end
