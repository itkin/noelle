# -*- encoding : utf-8 -*-
class Admin::ProjectsController < ApplicationController

  active_scaffold :project do |config|
    config.list.columns = [:display, :position, :title, :pictures, :has_comment]
    config.create.columns = config.update.columns = [:display, :position, :title, :sub_title, :comment, :timer]
    config.columns[:display].inplace_edit = config.columns[:position].inplace_edit = config.columns[:title].inplace_edit = true
  end

end
