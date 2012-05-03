# -*- encoding : utf-8 -*-
class SubscribersController < ApplicationController

  def create

    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      render :create
    else
      render :action => :new
    end
  end
end
