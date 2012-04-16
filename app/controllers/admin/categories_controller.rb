class Admin::CategoriesController < Admin::ApplicationController

  active_scaffold :category do |config|
    config.columns = :display, :position, :timer, :title, :comment, :projects
    config.list.columns = :display, :position, :title, :timer, :projects
    config.update.columns  = config.create.columns = :display, :position, :timer, :title, :comment
    config.columns[:display].inplace_edit = config.columns[:position].inplace_edit = config.columns[:title].inplace_edit = config.columns[:timer].inplace_edit = true
  end
    
  
end
