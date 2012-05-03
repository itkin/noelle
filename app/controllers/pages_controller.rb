# -*- encoding : utf-8 -*-
class PagesController < ApplicationController

  def index
    @pictures = Picture.top.shuffle
    @translations = Translation.displayable    
  end

  def show
    @page = Page.find_by_name(params[:name])
    redirect_to root_path unless @page
  end
  
end
