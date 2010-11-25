class PagesController < ApplicationController

  def index
    @pictures = Picture.top.shuffle
    @translations = Translation.displayable    
  end

  def show
    @page = Page.find_by_name(params[:name])
  end
  
end
