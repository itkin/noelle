class Admin::UsersController < Admin::ApplicationController
  active_scaffold :user do |config|
    config.show.columns = config.list.columns = [:email]
    config.update.columns = config.create.columns = [:email, :password, :password_confirmation] 
  end
end
