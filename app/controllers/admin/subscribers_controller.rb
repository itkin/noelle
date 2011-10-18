class Admin::SubscribersController < Admin::ApplicationController

  active_scaffold :subscriber do |config|
    config.show.columns = config.list.columns = [:name, :email, :created_at]
    config.update.columns = config.create.columns = [:name, :email]
  end

end
