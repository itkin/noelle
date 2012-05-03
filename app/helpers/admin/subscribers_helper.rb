# -*- encoding : utf-8 -*-
module Admin::SubscribersHelper

  def created_at_column(record)
    record.created_at.strftime("%d/%m/%Y à %H:%M")
  end
end
