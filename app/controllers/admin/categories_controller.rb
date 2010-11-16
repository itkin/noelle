class Admin::CategoriesController < Admin::ApplicationController

  active_scaffold :categories do |config|
    config.columns = :display, :position, :title, :projects
    config.columns[:display].inplace_edit = config.columns[:position].inplace_edit = config.columns[:title].inplace_edit = true
  end
    
  
end
