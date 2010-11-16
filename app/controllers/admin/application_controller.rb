class Admin::ApplicationController < ApplicationController
  before_filter :authenticate_user!

  layout :layout_by_type

  def layout_by_type
    if request.xhr?
      nil
    else
      'admin'
    end
  end

  ActiveScaffold.set_defaults do |config|
    config.ignore_columns = [:created_at, :updated_at]
  end

end
