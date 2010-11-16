class Admin::PagesController < Admin::ApplicationController
  active_scaffold :page do |config|
    
    config.actions.exclude :create
    config.show.columns = config.update.columns = [:image, :content]
  end
end
