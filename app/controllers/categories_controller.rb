class CategoriesController < ApplicationController

  def index
    @pictures = Picture.top.shuffle
  end
  def show
    @category = Category.find_by_id(params[:id])
  end
end
