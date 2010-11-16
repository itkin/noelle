class Admin::ProjectsController < ApplicationController

  active_scaffold :project do |config|
    config.list.columns = [:display, :position, :title, :pictures]
    config.create.columns = config.update.columns = [:display, :position, :title, :sub_title]
    config.columns[:display].inplace_edit = config.columns[:position].inplace_edit = config.columns[:title].inplace_edit = true
  end
end
