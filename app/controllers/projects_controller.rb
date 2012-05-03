# -*- encoding : utf-8 -*-
class ProjectsController < ApplicationController
  before_filter :get_category

  def get_category
    @category = Category.find_by_id(params[:category_id])
  end

  def show
    @project = Project.find_by_id(params[:id])
  end

  def comment
    @project = Project.find_by_id(params[:id])
  end
  
end
