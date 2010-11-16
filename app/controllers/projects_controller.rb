class ProjectsController < ApplicationController

  def get_category
    @category = Category.find_by_id(params[:category_id])
  end

  def show
    @project = Project.find_by_id(params[:id])
  end
  
end
