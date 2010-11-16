class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      "authentication.html.haml"
    else
      "application"
    end
  end


end